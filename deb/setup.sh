#!/bin/sh
PUBKEY=/usr/share/keyrings/nyancient.github.io-archive-keyring.gpg
BASE_URL=https://nyancient.github.io

curl $BASE_URL/nyancient.asc | gpg --dearmor | sudo dd of=$PUBKEY
echo | sudo tee /etc/apt/sources.list.d/nyancient.github.io.sources <<EOF
Types: deb
URIs: $BASE_URL/deb/
Suites: bookworm
Components: main
Signed-By: $PUBKEY
EOF

sudo apt update
