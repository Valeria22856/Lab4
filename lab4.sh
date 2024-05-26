#!/bin/bash

case "$1" in
    --date)
        echo "Dzisiejsza data: $(date)"
        ;;
    --logs)
        num_files=${2:-100}  # Domyślna liczba plików to 100, jeśli nie podano argumentu
        for i in $(seq 1 $num_files)
        do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" > $filename
            echo "Nazwa skryptu: skrypt.sh" >> $filename
            echo "Data utworzenia: $(date)" >> $filename
        done
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "--date       : Wyświetla dzisiejszą datę"
        echo "--logs [N]   : Tworzy N plików logx.txt (domyślnie 100)"
        echo "--help       : Wyświetla dostępne opcje"
        ;;
    *)
        echo "Nieznana opcja: $1"
        echo "Użyj --help, aby zobaczyć dostępne opcje"
        ;;
esac
