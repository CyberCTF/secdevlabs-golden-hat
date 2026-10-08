#!/bin/sh
# The reverse proxy in front of the app is mitmproxy 5.3.0 (it says so in a Via header) and it
# refuses /golden.secret.
set -e
out=$(curl -sS -i http://app:10006/golden.secret)
echo "$out" | head -n 1 | grep -q ' 401'
echo "$out" | grep -qi '^via: mitmproxy/5.3.0'
