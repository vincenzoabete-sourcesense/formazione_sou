
#!/bin/bash


if (( $# != "1" )); then #con $# conto il numero di argomenti, se diversi da uno, stampo errore
    echo "Devi inserire un solo argomento"
    exit 1 #codice d'errore di uscita
fi


contatore()
{
    if [[ "$1" =~ ^[0-9]+$ ]]; then   #controllo se l'argomento che inserisco sia di tipo numerico, in caso contrario non effettuo il ciclo
        echo "Hai inserito un numero"

        i=1 #inizializzo variabile contatore ad 1

        while (( i <= $1 )); do    # finchè variabile contatore è minore o uguale all'argomento passato in input, eseguo il ciclo

            if (( i % 2 == 0 )); then # se il modulo ottenuto dalla divisione per due della variabile contatore è zero, ho un numero pari altrimenti dispari
                echo "$i Pari"
            else
                echo "$i Dispari"
            fi

            ((i++)) #incremento di uno la variabile contatore, per continuare il ciclo

        done
    else
        echo "Non hai inserito un numero" 
    fi
}

contatore "$1" #richiamo la funzione per eseguirla con l'argomento passato in input