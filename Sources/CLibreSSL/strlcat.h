#ifndef H_STRLCAT
#define H_STRLCAT

#if defined(__linux__)

size_t
strlcat(char *dst, const char *src, size_t dsize);

#endif

#endif
