#!/bin/bash

conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

if [ ! -e ${hosts_path} ]; then
    touch ${hosts_path}
fi

LINE=$(cat ${hosts_path} | grep -x "${conf}" | wc -l)

# /etc/hosts 에 {127.0.0.1 ejachoi.42.fr}을 추가하여, localhost를 해당 도메인으로 설정합니다.
if [ ${LINE} -eq 0 ]; then
    echo ${conf} >> ${hosts_path}
fi

LINE=$(cat ${hosts_path} | grep -x "${conf}" | wc -l)

if [ ${LINE} -eq 0 ]; then
    echo "\
--------------------

@${hosts_path} error

--------------------" 1>&2
else
    echo "\
--------------------

@${hosts_path} ready

--------------------"
fi
