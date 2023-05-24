#include "ws2812.h"

//125 ciclos es un reloj

void
ws2812_symbol(ap_uint<1> bit, ap_uint<1>* out)
{
	int limit = 40;
	if (bit == 1) {
		limit = 85;
	}

	loop_symbol: for (int i=0; i<125; i++) {
		if (i<limit){
			*out = 1;
		} else {
			*out = 0;
		}
	}
}


// le pasamos cada bit a la salida
void
ws2812_led(ap_uint<24> led, ap_uint<1>* out)
{
	loop_led: for (int i=0; i<24; i++) {
		ws2812_symbol(led[23-i], out);
	}
}

void
ws2812(hls::stream<axi_data_t>& stream, ap_uint<1>* out)
{
#pragma HLS INTERFACE ap_none port=out
#pragma HLS INTERFACE axis register both port=stream
#pragma HLS INTERFACE ap_ctrl_hs port=return

	static bool odd_column = false;

	axi_data_t axi_data = stream.read();
	ap_uint<256> data = axi_data.data;

	if (odd_column == false) {
		loop_column_0: for (int i=0; i<8; i++) {
			//lee de arriba a abajo
			ws2812_led(data.range(32*i+23, 32*i), out);
		}
	}
	else {
		loop_column_1:for (int i=7; i>=0; i--) {
			//lee de arriba a abajo
			ws2812_led(data.range(32*i+23, 32*i), out);
		}
	}
	odd_column = !odd_column;

	if (axi_data.last) {
		{
			odd_column = false;
			loop_reset: for (int i=0; i<5000; i++){
				*out = 0;
			}
		}//generar el cero largo
	}
}




