#ifndef _WS2812_H
#define _WS2812_H

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"

typedef ap_axiu<256,1,1,1> axi_data_t;

void ws2812(hls::stream<axi_data_t>& stream, ap_uint<1>* out);


#endif
