#include "modplayer/modplayer.h"
#include "pdutility/platform.h"

#define REGISTER_TOYBOX_EXTENSIONS	pd_init(playdate); \
									registerModPlayer();
