#!/bin/bash

volume_path="/home/ejachoi/data"
if [ "$(uname)" == "Darwin" ]; then
    volume_path="/Users/ejachoi/goinfree/docker_study/inception2/data"
fi

wordpress_path="${volume_path}/wordpress"
mariadb_path="${volume_path}/mariadb"
conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

# Remove directories
rm -rf "$wordpress_path" "$mariadb_path"

# Delete the specified line from hosts file
sed -i.bak "/${conf}/d" "$hosts_path" 2>/dev/null || \
sed -i "/${conf}/d" "$hosts_path"

cat <<EOF
--------------------

@fclean done

--------------------
EOF