#include "modplayer/modplayer.h"
#include "pdutility/pdutility.h"

#define REGISTER_TOYBOX_EXTENSIONS	register_pdutility(playdate); \
									register_modplayer(playdate);
