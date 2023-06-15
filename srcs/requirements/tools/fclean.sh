#!/bin/bash

wordpress_path=$($(pwd)/srcs/requirements/tools/info.sh wordpress_path)
mariadb_path=$($(pwd)/srcs/requirements/tools/info.sh mariadb_path)
conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

# WordPress 경로 및 MariaDB 경로를 삭제합니다.
rm -rf "${wordpress_path}"
rm -rf "${mariadb_path}"

# 호스트 파일에서 conf 설정을 삭제합니다.
sed -i "/${conf}/d" "${hosts_path}"

echo "\
--------------------

클린업 완료

--------------------"