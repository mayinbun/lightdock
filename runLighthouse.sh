#!/bin/bash

# Usage examples

# clean
rm -rf lighthouse

# create output folder
install -d -m 0777 lighthouse


# uses default entrypoint flags
# docker run -it -v $(pwd)/lighthouse:/home/app/lighthouse imageim https://google.com

# with custom entrypoint flags
sh 'docker run -it --entrypoint="" -v $PWD/lighthouse:/home/app/lighthouse bunyamin92/lightdock lighthouse --chrome-flags="--headless --no-sandbox" --output="html" --output-path="/home/app/lighthouse/report.html" https://google.com'

