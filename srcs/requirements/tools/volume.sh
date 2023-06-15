#!/bin/bash

volume_path="/home/ejachoi/data"
if [ "$(uname)" == "Darwin" ]; then
    volume_path="/Users/ejachoi/goinfree/docker_study/inception2/data"
fi
wordpress_path="${volume_path}/wordpress"
mariadb_path="${volume_path}/mariadb"
# wordpress_path=$($(pwd)/srcs/requirements/tools/info.sh wordpress_path)
# mariadb_path=$($(pwd)/srcs/requirements/tools/info.sh mariadb_path)

if [ ! -d ${wordpress_path} ]; then
    mkdir -p ${wordpress_path}
fi
if [ ! -d ${mariadb_path} ]; then
    mkdir -p ${mariadb_path}
fi

if [ -d ${wordpress_path} ] && [ -d ${mariadb_path} ]; then
    echo "\
--------------------

@${wordpress_path} ready
@${mariadb_path} ready

--------------------"
else
    echo "\
--------------------

@volume error

--------------------" 1>&2
fi
