--
--  modplayer-sample - Amiga SoundTracker/ProTracker Module Player for Playdate.
--
--  MIT License
--  Copyright (c) 2022 Didier Malenfant.
--
--  Permission is hereby granted, free of charge, to any person obtaining a copy
--  of this software and associated documentation files (the "Software"), to deal
--  in the Software without restriction, including without limitation the rights
--  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--  copies of the Software, and to permit persons to whom the Software is
--  furnished to do so, subject to the following conditions:
--
--  The above copyright notice and this permission notice shall be included in all
--  copies or substantial portions of the Software.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--  SOFTWARE.
--

import "CoreLibs/graphics"
import "CoreLibs/object"

import "../toyboxes/toyboxes.lua"

local gfx <const> = playdate.graphics

class('Main', { module = nil, player = nil }).extends()

function Main:init()
    Main.super.init(self)

    gfx.setColor(gfx.kColorWhite)
    gfx.setFont(gfx.getSystemFont())

    self.module = modplayer.module.new('Sounds/Crystal_Hammer.mod')
    assert(self.module)

    self.player = modplayer.player.new()
    assert(self.player)

    self.player:load(self.module)
    self.player:play()
end

function Main:update()
    gfx.fillRect(0, 0, 400, 240)

    playdate.drawFPS(385,0)

    local stats = playdate.getStats()
    if (stats) then
        local game_stats = stats['game']
        if game_stats then
            gfx.drawText(string.format('*Game %2.2f*', game_stats), 1, 1)
        end
        local audio_stats = stats['audio']
        if game_stats then
            gfx.drawText(string.format('*Audio %2.2f*', audio_stats), 1, 21)
        end
        local kernel_stats = stats['kernel']
        if kernel_stats then
            gfx.drawText(string.format('*Kernel %2.2f*', kernel_stats), 1, 41)
        end
    end

    self.player:update()
end

local main = Main()

function playdate.update()
    main:update()
end
