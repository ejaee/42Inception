#!/bin/bash

# 환경 변수 정의
intra_id=ejachoi

# 볼륨 경로 설정
if [ "$(uname)" == "Darwin" ]; then
    volume_path=/Users/ejachoi/goinfree/docker_study/inception2/data
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    volume_path=/home/ejachoi/data
fi

# Wordpress 경로
wordpress_path=${volume_path}/wordpress

# MariaDB 경로
mariadb_path=${volume_path}/mariadb
