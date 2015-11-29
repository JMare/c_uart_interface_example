all: mavlink_control

mavlink_control: mavlink_control.cpp
	g++ -I ~/git/mavlink/c_library mavlink_control.cpp serial_port.cpp autopilot_interface.cpp -o mavlink_control -lpthread

clean:
	 rm -rf *o mavlink_control
