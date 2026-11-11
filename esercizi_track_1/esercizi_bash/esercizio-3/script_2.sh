#!/bin/bash

var_1=$(uname -r)  #inserisco nella variabile_1 la versione del kernel corrente 

#inserisco nella variabile_2 le versioni del kernel Linux installate prendendo soltanto la parte relativa alla versione, alla release e all'architettura della CPU della stringa ottenuta, escludendo quindi la parte iniziale kernel-
var_2=$(rpm -q kernel --qf '%{VERSION}-%{RELEASE}.%{ARCH}\n') 

if [[ "$var_1" == "$var_2" ]]; then #confronto le due stringhe ottenute
    echo "TRUE" #se due stringhe uguali (come in questo caso) stampa TRUE
else
    echo "FALSE" #in caso contrario stampa FALSE
fi
