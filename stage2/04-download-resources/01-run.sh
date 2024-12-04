#!/bin/bash -e

echo "Downloading latest Spotifyd release"
curl -s https://api.github.com/repos/Spotifyd/spotifyd/releases/latest \
| grep "spotifyd-linux-armv6-slim.tar.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs curl -O

echo "Downloading checksum"
curl -s https://api.github.com/repos/Spotifyd/spotifyd/releases/latest \
| grep "spotifyd-linux-armv6-slim.sha512" \
| cut -d : -f 2,3 \
| tr -d \" \
| xargs curl -O

echo "Unpacking"
tar -xvf spotifyd-linux-armv6-slim.tar.gz