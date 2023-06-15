#!/bin/bash

conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

if [ ! -e "${hosts_path}" ]; then
    touch "${hosts_path}"
fi

LINE=$(grep -cx "${conf}" "${hosts_path}")

if [ ${LINE} -eq 0 ]; then
    RED='\033[1;31m'
    GREEN='\033[1;32m'
    RESET='\033[0m'
    echo -e "${RED}--------------------
@${hosts_path} error
--------------------${RESET}" >&2
else
    echo -e "${GREEN}--------------------
@${hosts_path} ready
--------------------${RESET}"
fi