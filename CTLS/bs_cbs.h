#ifndef H_BS_CBS
#define H_BS_CBS

int cbs_get_any_asn1_element_internal(CBS *cbs, CBS *out, unsigned int *out_tag, size_t *out_header_len, int strict);
void CBS_dup(const CBS *cbs, CBS *out);

#endif
