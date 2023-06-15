#!/bin/bash

intra_id="ejachoi"
volume_path="/home/ejachoi/data" # GNU/Linux platform을 기본으로 설정합니다.
if [ "$(uname)" == "Darwin" ]; then
    volume_path="/Users/ejachoi/goinfree/docker_study/inception2/data" # Mac OS X platform 경로
fi
wordpress_path="${volume_path}/wordpress"
mariadb_path="${volume_path}/mariadb"
hosts_path="/etc/hosts"
conf="127.0.0.1 ejachoi.42.fr"

if [ $# -eq 0 ]; then
    echo "NO ARGUMENTS" >&2
    exit 1
fi

case $1 in
    "intra_id") echo "$intra_id" ;;
    "wordpress_path") echo "$wordpress_path" ;;
    "mariadb_path") echo "$mariadb_path" ;;
    "hosts_path") echo "$hosts_path" ;;
    "conf") echo "$conf" ;;
    *) echo "NOT FOUND INFO" >&2 ;;
esac