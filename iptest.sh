#!/bin/bash

TLS=$1

if [[ -z "$TLS" ]]; then
  TLS=true
elif [[ "$TLS" == "true" ]]; then
  TLS=true
elif [[ "$TLS" == "false" ]]; then
  TLS=false
else
  echo "$TLS error"
fi
./iptest -file=ip.txt -speedtest=4 -tls=$TLS -url=speed.sock.cf/__down?bytes=500000000
