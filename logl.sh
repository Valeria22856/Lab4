echo '#!/bin/bash

create_logs() {
    count=$1
    for i in $(seq 1 $count); do
        mkdir -p log$i
        echo -e "log${i}/log${i}.txt\nlog_script.sh\n$(date)" > log${i}/log${i}.txt
    done
}

create_errors() {
    count=$1
    for i in $(seq 1 $count); do
        mkdir -p error$i
        echo -e "error${i}/error${i}.txt\nlog_script.sh\n$(date)" > error${i}/error${i}.txt
    done
}

if [ "$1" == "--logs" ] || [ "$1" == "-l" ]; then
    count=${2:-100}
    create_logs $count
elif [ "$1" == "--error" ] || [ "$1" == "-e" ]; then
    count=${2:-100}
    create_errors $count
fi' > logl.sh
chmod +x logl.sh
