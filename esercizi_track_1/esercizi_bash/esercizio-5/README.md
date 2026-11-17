# Esercizio 5

**ODD/EVEN: Scrivere uno script che accetti un argomento numerico e stampi la sequenze di numeri da 1 a quel numero con l'indicazione se è pari o dispari. 
Controllare il corretto numero di argomenti passati allo script e che l'argomento sia di tipo numerico, in caso contrario generare una condizione di errore.**



- Lo script conta il numero di argomenti che vengono passati in input, se sono diversi da uno viene stampato a video un messaggio d’errore.

- La funzione **contatore** mediante il selettore **if** controlla se l’argomento passato in input sia di tipo numerico, altrimenti non si entra proprio nel ciclo, si passa direttamente al ramo **else** e si stampa a video il messaggio che informa che non si è inserito un numero. ```if [[ "$1" =~ ^[0-9]+$ ]]; then```

- Se viene inserito un numero, viene eseguito il ciclo **while**. La variabile contatore **“i”** viene inizializzata ad 1, dal momento che si devono contare tutti i numeri da 1 fino al valore numerico scelto. Il ciclo **while** verrà ripetuto finché la variabile contatore non sarà maggiore al valore passato in input. ```while (( i <= $1 )); do```

- All’interno del ciclo **while**, viene effettuato un ulteriore confronto che permette di comprendere se il valore in esame in quella specifica fase del ciclo sia pari o dispari. Per tale motivo, si calcola il modulo della variabile contatore, in particolare si effettua la divisione per due, se il resto della divisione risulta uguale a zero allora si tratta di un numero pari, in caso contrario ci troviamo di fronte ad un numero dispari. ```if (( i % 2 == 0 ));```

- Al termine del ciclo **while**, bisogna incrementare di un’unità la variabile contatore in modo da far partire un nuovo ciclo. ```((i++))```

- All’esterno del corpo della funzione, viene richiamata quest’ultima in modo da eseguirla con l’argomento che viene fornito in input allo script realizzato. ```contatore "$1"```
