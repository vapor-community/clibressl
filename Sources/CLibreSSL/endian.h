#ifndef H_ENDIAN
#define H_ENDIAN

#if defined(__linux__)
	#include <endian.h>
#else
	#include <machine/endian.h>
#endif

#endif