##lsusb | grep RTL2838
##Bus 001 Device 005: ID 0bda:2838 Realtek Semiconductor Corp. RTL2838 DVB-T
##/dev/bus/usb/001/005
docker run -p44006:44006 --rm --device /dev/bus/usb/001/005 -it registry.hamfog.net/dm4tze/sdr-rtl-server
