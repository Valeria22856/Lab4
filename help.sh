echo '#!/bin/bash

if [ "$1" == "--help" ]; then
    echo "--date       Display current date"
    echo "--logs [n]   Create log files (default: 100)"
    echo "--help       Display help"
fi' > help.sh
chmod +x help.sh
