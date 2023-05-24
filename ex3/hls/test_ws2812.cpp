#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ws2812.h"
#include "ap_int.h"


int main() {

	hls::stream<axi_data_t> stream;
	ap_uint<1> out;

	axi_data_t data;
	data.data = 0;
	data.last = 0;
	data.user = 0;
	data.id = 0;
	data.dest = 0;
	data.keep = 0xFFFFFFFF;
	data.strb = 0xFFFFFFFF;

	stream.write(data);

	data.data = 1;
	data.data.range(255,224) = 0x00FFFFFFUL;
	data.data.range(223,196) = 0x00AAAAAAUL;
	data.last = 1;

	stream.write(data);

	ws2812(stream, &out);

	return 0;
}

