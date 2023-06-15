#!/bin/bash

conf="127.0.0.1 ejachoi.42.fr"
hosts_path="/etc/hosts"

# hosts 파일이 존재하지 않으면 생성합니다.
if [ ! -e "$hosts_path" ]; then
    touch "$hosts_path"
fi

# hosts 파일에서 conf 설정이 있는지 확인합니다.
LINE=$(grep -x "$conf" "$hosts_path" | wc -l)

# conf 설정이 없으면 hosts 파일에 추가합니다.
if [ "$LINE" -eq 0 ]; then
    echo "$conf" >> "$hosts_path"
fi

# 다시 한 번 conf 설정이 있는지 확인합니다.
LINE=$(grep -x "$conf" "$hosts_path" | wc -l)

# conf 설정이 없을 경우 오류 메시지를 출력합니다.
if [ "$LINE" -eq 0 ]; then
    echo "\
--------------------

호스트 파일 오류: $hosts_path

--------------------" 1>&2
else
    echo "\
--------------------

호스트 파일 준비 완료: $hosts_path

--------------------"
fi