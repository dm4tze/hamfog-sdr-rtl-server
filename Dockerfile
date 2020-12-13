FROM alpine

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/main rtl-sdr

ENTRYPOINT  ["rtl_tcp", "-a", "0.0.0.0", "-d0", "-p", "44006", "-n", "1"] 
