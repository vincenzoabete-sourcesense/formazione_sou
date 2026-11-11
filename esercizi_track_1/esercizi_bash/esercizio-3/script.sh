#!/bin/bash

var_1=$(uname -r) #inserisco nella variabile_1 la versione del kernel corrente 
var_2=$(rpm -q kernel | sed 's/kernel-//') #inserisco nella variabile_2 le versioni del kernel Linux installate, eliminando la voce kernel- dalla stringa

if [[ "$var_1" == "$var_2" ]]; then #confronto le due stringhe ottenute
        echo "TRUE" #se due stringhe uguali (come in questo caso) stampa TRUE
else
        echo "FALSE" #in caso contrario stampa FALSE
fi
