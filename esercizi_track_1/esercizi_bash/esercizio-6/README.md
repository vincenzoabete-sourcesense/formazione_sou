# Esercizio 6


**AWK: Scrivere un programma AWK che prende in input un file .csv e stampa il terzo campo solo se viene matchata la stringa "banana".
File di input di esempio:
        apple,banana,strawberry
        pear,peach,lemon -
        banana,kiwi,orange.
Output desiderato:
        strawberry
        orange**



```awk -F',' '/banana/ {print $3}' fruit.csv```

- E’ stato eseguito il seguente comando per filtrare solo le righe che contenessero la stringa banana e prendere l’ultima colonna (la terza) della riga corrispondente

- Il comando ```awk``` seguito dal parametro **-F** permette di considerare all’interno del file csv selezionato il carattere speciale **“,”** che divide le parole in questo file. 

- Successivamente, il comando ```awk``` cerca all’interno del file la parola **“banana”** e quando la trova stampa l’ultima colonna ossia la terza in questo caso, mediante ```{print $3}```. 

- Le righe coinvolte nell’esecuzione del comando risultano essere la prima e l’ultima (in quanto contengono la parola banana) e per tale motivo viene stampata l’ultima colonna (strawberry, orange).



- Lo script ottiene lo stesso output del comando in alto utilizzando delle strutture di controllo.

- Inizialmente, lo script prende in input il file **fruit.csv** che presenta le righe da analizzare ed esegue un ciclo **while** andando a leggere ogni riga del suddetto file.

- L’istruzione condizionale **if** controlla se all’interno della riga in esame sia presente la stringa **“banana”**. Gli asterischi ```*"banana"*``` permettono di evidenziare la stringa banana in una riga contenente altre parole e segni speciali . 

- Se la stringa banana viene identificata all’interno di una riga, viene stampata l’ultima colonna (la terza) grazie al comando ```awk```, il parametro **-F** che identifica il carattere **“,”**  e ```'{print $3}’``` come svolto nell’esercizio precedente.   

