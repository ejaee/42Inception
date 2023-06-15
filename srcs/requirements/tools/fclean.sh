#!/bin/bash

volume_path="/home/ejachoi/data"
if [ "$(uname)" == "Darwin" ]; then
    volume_path="/Users/ejachoi/goinfree/docker_study/inception2/data"
fi
wordpress_path="${volume_path}/wordpress"
mariadb_path="${volume_path}/mariadb"
# wordpress_path=$($(pwd)/srcs/requirements/tools/info.sh wordpress_path)
# mariadb_path=$($(pwd)/srcs/requirements/tools/info.sh mariadb_path)
conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

rm -rf ${wordpress_path}
rm -rf ${mariadb_path}

# 리눅스와 mac의 sed 사용법이 다르다...
# * ----------------------------------------------------------
if [ "$(uname)" == "Darwin" ]; then
    sed -i '' "/${conf}/d" ${hosts_path}
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sed -i "/${conf}/d" ${hosts_path}
fi
# * ----------------------------------------------------------

echo "\
--------------------

@fclean done

--------------------"
