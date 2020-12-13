 
# Dockerized rtl_tcp SDR Server
From this Dockerfile you can create an Image with rtl-sdr tools installed on Alpine Linux. It is configured to run rtl_tcp on port 44006.


## Build

To build this image you can use the `build.sh`. It will create an Image tagged with `registry.hamfog.net/dm4tze/sdr-rtl-server`.

## Start

To Start the Server you first need to get the address of your SDR stick. You can use `lsusb` to list all your usb devices and filter the output with `grep`like in the following example:

    
    $ lsusb | grep RTL2838 
    Bus 001 Device 003: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
 
With the information of the bus 001 and the device 003 you are able to map your device in the container and start the SDR server. For the first test you can add `--rm` so the container is deleted on exit and `-it` to run in interactive mode so you can see the output on your console. For productive use you can remove these parameters.

    
    docker run -p44006:44006 --rm --device /dev/bus/usb/001/003 -it registry.hamfog.net/dm4tze/sdr-rtl-server

