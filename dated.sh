echo '#!/bin/bash

if [ "$1" == "--date" ] || [ "$1" == "-d" ]; then
    date
fi' > dated.sh
chmod +x dated.sh
