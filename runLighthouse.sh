#!/bin/bash

# clean
rm -rf lighthouse

# create output folder
install -d -m 0777 lighthouse

# chown -R $(id -u):$(id -g) lighthouse
docker run -it -v $(pwd)/lighthouse:/home/app/lighthouse imageim https://google.com