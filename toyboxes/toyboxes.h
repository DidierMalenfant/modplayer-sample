#include "modplayer/modplayer.h"
#include "pdutility/pdutility.h"

#define REGISTER_TOYBOX_EXTENSIONS(pd)	register_pdutility(pd); \
										register_modplayer(pd);
