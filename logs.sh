echo '#!/bin/bash

if [ "$1" == "--logs" ]; then
    count=100
    if [ -n "$2" ]; then
        count=$2
    fi
    for i in $(seq 1 $count); do
        echo -e "log${i}.txt\nlog_script.sh\n$(date)" > log${i}.txt
    done
fi' > logs.sh
chmod +x logs.sh
