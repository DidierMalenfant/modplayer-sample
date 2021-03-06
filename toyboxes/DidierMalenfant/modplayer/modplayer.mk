#
#  modplayer - Amiga SoundTracker/ProTracker Module Player for Playdate.
#
#  Based on littlemodplayer by Matt Evans.
#
#  MIT License
#  Copyright (c) 2022 Didier Malenfant.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
#

# -- Find out more about where this file is relative to the Makefile including it
_RELATIVE_FILE_PATH := $(lastword $(MAKEFILE_LIST))
_RELATIVE_DIR := $(subst /$(notdir $(_RELATIVE_FILE_PATH)),,$(_RELATIVE_FILE_PATH))
    
# -- Add us as an include search folder only if it's not already there
uniq = $(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
UINCDIR := $(call uniq, $(UINCDIR) $(_RELATIVE_DIR))

# -- This is our current version number
MODPLAYER_VERSION := 0002
UDEFS := $(UDEFS) -DMODPLAYER_VERSION=$(MODPLAYER_VERSION)

# -- Add our source files
SRC := $(SRC) \
          $(_RELATIVE_DIR)/modplayer/modplayer.c \
          $(_RELATIVE_DIR)/modplayer/lmp/littlemodplayer.c
