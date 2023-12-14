#!/bin/bash

TLS=$1

if [[ -z "$TLS" ]]; then
  TLS=true
else
  TLS=FALSE
fi
echo "$TLS"

./iptest -file=ip.txt -speedtest=4 -tls=$TLS -url=speed.sock.cf/__down?bytes=500000000
