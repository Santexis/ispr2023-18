set design "fir_top"
set top "${design}"
set proj_dir "./ip_proj"

set ip_properties [ list \
    vendor "xilinx.com" \
    library "user" \
    name ${design} \
    version "1.0" \
    display_name "AXI-Lite Sample FIR" \
    description "Executes a FIR filter AXI4-Lite" \
    vendor_display_name "Xilinx University Program" \
    company_url "http://www.xilinx.com" \
    ]

set family_lifecycle { \
  artix7 Production \
  artix7l Production \
  kintex7 Production \
  kintex7l Production \
  virtex7 Production \
  virtexuplus Production \
  zynq Production \
  zynquplus Production \
  aartix7 Production \
  azynq Production \
  qartix7 Production \
  qkintex7 Production \
  qkintex7l Production \
  qvirtex7 Production \
  qzynq Production \
}
