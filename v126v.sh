#!/bin/bash

POOL=eu1.ethermine.org:14444
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-v126v-

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@
