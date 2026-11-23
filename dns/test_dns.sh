#!/usr/bin/env bash
set -xeu

dig @192.168.57.5 dns.alexandru.test +short
dig @192.168.57.5 negocio.alexandru.test +short
dig @192.168.57.5 www.alexandru.test +short
dig @192.168.57.5 ftp.alexandru.test +short
dig @192.168.57.5 -x 192.168.57.5 +short
dig @192.168.57.5 -x 192.168.57.7 +short