SCRIPT = $(shell basename `pwd`)

all: ip

ip: component.xml

component.xml:
	vivado -nolog -nojournal -mode batch -source tcl/$(SCRIPT).tcl

clean:
	rm -rf ip_*  vivado*.* *.xml xgui/ .Xil* *.*~ webtalk*
