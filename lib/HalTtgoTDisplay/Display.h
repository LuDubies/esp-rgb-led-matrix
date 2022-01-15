/* MIT License
 *
 * Copyright (c) 2019 - 2021 Andreas Merkle <web@blue-andi.de>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/*******************************************************************************
    DESCRIPTION
*******************************************************************************/
/**
 * @brief  TTGO T-Display
 * @author Andreas Merkle <web@blue-andi.de>
 *
 * @addtogroup gfx
 *
 * @{
 */

#ifndef __DISPLAY_H__
#define __DISPLAY_H__

/******************************************************************************
 * Compile Switches
 *****************************************************************************/

/******************************************************************************
 * Includes
 *****************************************************************************/
#include <stdint.h>
#include <IDisplay.hpp>
#include <ColorDef.hpp>
#include <TFT_eSPI.h>

#include "Board.h"

/******************************************************************************
 * Macros
 *****************************************************************************/

/******************************************************************************
 * Types and Classes
 *****************************************************************************/

/**
 * This display represents TTGO T-Display.
 */
class Display : public IDisplay
{
public:

    /**
     * Get display instance.
     *
     * @return Display
     */
    static Display& getInstance()
    {
        static Display instance; /* singleton idiom to force initialization in the first usage. */

        return instance;
    }

    /**
     * Initialize base driver for the display.
     *
     * @return If successful, returns true otherwise false.
     */
    bool begin() final
    {
        m_tft.init();
        m_tft.fillScreen(TFT_BLACK);

        return true;
    }

    /**
     * Show framebuffer on physical display. This may be synchronous
     * or asynchronous.
     */
    void show() final
    {
        int32_t x = 0;
        int32_t y = 0;

        for(y = 0; y < MATRIX_HEIGHT; ++y)
        {
            for(x = 0; x < MATRIX_WIDTH; ++x)
            {
                Color       brightnessAdjustedColor = m_ledMatrix[x][y];
                uint16_t    intensity               = brightnessAdjustedColor.getIntensity();

                intensity *= (static_cast<uint16_t>(m_brightness) + 1U);
                intensity /= 256U;
                brightnessAdjustedColor.setIntensity(static_cast<uint8_t>(intensity));

                m_tft.fillRect( y * (PIXEL_HEIGHT + PiXEL_DISTANCE) + BORDER_Y,
                                TFT_HEIGHT - (x * (PIXEL_WIDTH  + PiXEL_DISTANCE) + BORDER_X) - 1,
                                PIXEL_HEIGHT,
                                PIXEL_WIDTH,
                                brightnessAdjustedColor.to565());
            }
        }

        return;
    }

    /**
     * The display is ready, when the last physical pixel update is finished.
     * A asynchronous display update, triggered by show() can be observed this way.
     *
     * @return If ready for another update via show(), it will return true otherwise false.
     */
    bool isReady() const final
    {
        return true;
    }

    /**
     * Set brightness from 0 to 255.
     * 255 = max. brightness.
     *
     * @param[in] brightness    Brightness value [0; 255]
     */
    void setBrightness(uint8_t brightness) final
    {
        m_brightness = brightness;

        return;
    }

    /**
     * Clear LED matrix.
     */
    void clear() final
    {
        uint8_t x = 0U;
        uint8_t y = 0U;

        m_tft.fillScreen(TFT_BLACK);

        for(y = 0U; y < MATRIX_HEIGHT; ++y)
        {
            for(x = 0U; x < MATRIX_WIDTH; ++x)
            {
                m_ledMatrix[x][y] = ColorDef::BLACK;
            }
        }

        return;
    }

    /**
     * Get pixel color at given position.
     *
     * @param[in] x x-coordinate
     * @param[in] y y-coordinate
     *
     * @return Color in RGB888 format.
     */
    Color getColor(int16_t x, int16_t y) const final;

private:

    /** Display matrix width in pixels (not T-Display width) */
    static const uint16_t   MATRIX_WIDTH        = 32U;

    /** Display matrix height in pixels (not T-Display height) */
    static const uint16_t   MATRIX_HEIGHT       = 8U;

    /** Width of a single matrix pixel in T-Display pixels */
    static const int32_t    PIXEL_WIDTH         = 6;

    /** Height of a single matrix pixel in T-Display pixels */
    static const int32_t    PIXEL_HEIGHT        = 6;

    /** Pixel distance in T-Display pixels */
    static const int32_t    PiXEL_DISTANCE      = 1;

    /** T-Display x-axis border size in T-Display pixels */
    static const int32_t    BORDER_X            = (TFT_HEIGHT - (MATRIX_WIDTH * (PIXEL_WIDTH + PiXEL_DISTANCE))) / 2;

    /** T-Display y-axis border size in T-Display pixels */
    static const int32_t    BORDER_Y            = (TFT_WIDTH - (MATRIX_HEIGHT * (PIXEL_HEIGHT + PiXEL_DISTANCE))) / 2;

    /** Default brightness is 50%. */
    static const uint8_t    DEFAULT_BRIGHTNESS  = (UINT8_MAX / 2U);

    TFT_eSPI    m_tft;                                      /**< T-Display driver */
    Color       m_ledMatrix[MATRIX_WIDTH][MATRIX_HEIGHT];   /**< Simulated LED matrix framebuffer */
    uint8_t     m_brightness;                               /**< Display brightness [0; 255] value. 255 = max. brightness. */

    /**
     * Construct display.
     */
    Display();

    /**
     * Destroys display.
     */
    ~Display();

    Display(const Display& display);
    Display& operator=(const Display& display);

    /**
     * Draw a single pixel on the display.
     *
     * @param[in] x     x-coordinate
     * @param[in] y     y-coordinate
     * @param[in] color Pixel color in RGB888 format
     */
    void drawPixel(int16_t x, int16_t y, const Color& color) final
    {
        if ((0 <= x) &&
            (MATRIX_WIDTH > x) &&
            (0 <= y) &&
            (MATRIX_HEIGHT > y))
        {
            m_ledMatrix[x][y] = color;
        }

        return;
    }

    /**
     * Dim color to black.
     * A dim ratio of 0 means no change.
     * 
     * Note, the base colors may be destroyed, depends on the color type.
     *
     * @param[in] x     x-coordinate
     * @param[in] y     y-coordinate
     * @param[in] ratio Dim ratio [0; 255]
     */
    void dimPixel(int16_t x, int16_t y, uint8_t ratio) final
    {
        if ((0 <= x) &&
            (MATRIX_WIDTH > x) &&
            (0 <= y) &&
            (MATRIX_HEIGHT > y))
        {
            m_ledMatrix[x][y].setIntensity(UINT8_MAX - ratio);
        }

        return;
    }
};

/******************************************************************************
 * Functions
 *****************************************************************************/

#endif  /* __DISPLAY_H__ */

/** @} */