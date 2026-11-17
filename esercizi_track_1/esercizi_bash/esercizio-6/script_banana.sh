#!/bin/bash

while read riga; do  # leggi riga per riga il file fruit.csv

    if [[ "$riga" == *"banana"* ]]; then    # se trovi stringa banana all'interno di riga
        echo "$riga" | awk -F',' '{print $3}' # stampa solo l'ultima colonna della riga (che presenta quindi al suo interno la stringa banana)
    fi

done < fruit.csv # prendo in input file fruit.csv