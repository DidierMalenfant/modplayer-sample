_RELATIVE_FILE_PATH := $(lastword $(MAKEFILE_LIST))
_RELATIVE_DIR := $(subst /$(notdir $(_RELATIVE_FILE_PATH)),,$(_RELATIVE_FILE_PATH))

uniq = $(if $1,$(firstword $1) $(call uniq,$(filter-out $(firstword $1),$1)))
UINCDIR := $(call uniq, $(UINCDIR) $(_RELATIVE_DIR))

PDUTILITY_MAKEFILE = $(_RELATIVE_DIR)/DidierMalenfant/pdutility/pdutility.mk
MODPLAYER_MAKEFILE = $(_RELATIVE_DIR)/DidierMalenfant/modplayer/modplayer.mk

include $(PDUTILITY_MAKEFILE)
include $(MODPLAYER_MAKEFILE)
