#!/bin/bash

intra_id=ejachoi

# * ----------------------------------------------------------
if [ "$(uname)" == "Darwin" ]; then
    # Do something under Mac OS X platform        
    volume_path=/Users/ejachoi/goinfree/docker_study/inception2/data # 이건 내 mac에서 테스트할 경로
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    # Do something under GNU/Linux platform
    volume_path=/home/ejachoi/data
fi
# * ----------------------------------------------------------
wordpress_path=${volume_path}/wordpress
mariadb_path=${volume_path}/mariadb

# * ----------------------------------------------------------
hosts_path="/etc/hosts"
conf="127.0.0.1 ejachoi.42.fr"
# * ----------------------------------------------------------

if [ $# -eq 0 ]
then
    echo "NO ARGUMENTS" 1>&2
    exit 1
fi

if [ "intra_id" = $1 ]
then
    echo ejachoi
# elif [ "wordpress_path" = $1 ]
# then
#     echo ${wordpress_path}
# elif [ "mariadb_path" = $1 ]
# then
    # echo ${mariadb_path}
elif [ "hosts_path" = $1 ]
then
    echo ${hosts_path}
elif [ "conf" = $1 ]
then
    echo ${conf}
else
    echo "NOT FOUND INFO" 1>&2
fi
