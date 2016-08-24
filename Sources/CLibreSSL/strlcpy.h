#ifndef H_STRLCPY
#define H_STRLCPY

#if defined(__linux__)
size_t
strlcpy(char *dst, const char *src, size_t dsize);

#endif

#endif
