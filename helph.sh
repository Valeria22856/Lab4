echo '#!/bin/bash

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo "--date, -d       Display current date"
    echo "--logs [n], -l [n]   Create log files (default: 100)"
    echo "--error [n], -e [n]   Create error files (default: 100)"
    echo "--help, -h       Display help"
fi' > helph.sh
chmod +x helph.sh
