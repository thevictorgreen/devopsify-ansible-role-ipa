#!/bin/bash

# LOG OUTPUT TO A FILE
exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/root/.ipa_automate/log.out 2>&1

if [[ ! -f "/root/.ipa_automate/init.cfg" ]]
then
  # Idempotentcy
  touch /root/.ipa_automate/init.cfg
fi
