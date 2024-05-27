echo '#!/bin/bash

if [ "$1" == "--init" ]; then
    git clone https://github.com/Valeria22856/Lab4.git
    echo "export PATH=\$PATH:$(pwd)/Lab4" >> ~/.bashrc
    source ~/.bashrc
fi' > init.sh
chmod +x init.sh
