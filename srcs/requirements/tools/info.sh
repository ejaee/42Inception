#!/bin/bash

intra_id=ejachoi

if [ "$(uname)" == "Darwin" ]; then
    volume_path=/Users/ejachoi/goinfree/docker_study/inception2/data # 이건 내 mac에서 테스트할 경로
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    volume_path=/home/ejachoi/data
fi

wordpress_path=${volume_path}/wordpress
mariadb_path=${volume_path}/mariadb


# * ----------------------------------------------------------
hosts_path="/etc/hosts"
conf="127.0.0.1 ejachoi.42.fr"
# * ----------------------------------------------------------
