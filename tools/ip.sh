#!/bin/bash
#
# Print IP address
#
# VERSION       :0.2.0
# DATE          :2015-07-18
# AUTHOR        :Viktor Szépe <viktor@szepe.net>
# LICENSE       :The MIT License (MIT)
# URL           :https://github.com/szepeviktor/debian-server-tools
# BASH-VERSION  :4.2+
# LOCATION      :/usr/local/bin/ip.sh

# https://help.dyn.com/remote-access-api/checkip-tool/
#
# <html><head><title>Current IP Check</title></head><body>Current IP Address: 123.456.78.90</body></html>

IP_URL="http://checkip.dyndns.com/"

wget -q -O- "$IP_URL" | grep -m 1 -o "[0-9.]\+"
