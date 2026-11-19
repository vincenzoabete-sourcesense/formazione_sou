# Esercizio 1

**Traccia**

Supponiamo che abbiamo un file csv con i vostri dati: 

Nome,cognome,numero,città

Bisogna estrarre la colonna cognome. La prima lettera deve diventare sempre maiuscola, selezionare solo due cognomi.
Deve essere tutto in pipe. <br> <br> <br>

**Svolgimento**

**VERSIONE SEMPLIFICATA**

Ho creato con VIM il file utenti.csv con il nome, cognome, numeri di cellulare e città dei membri della Academy 8

<br> <br>


```awk -F',' '{print $2}' utenti.csv | grep "abete" | sed 's/abete/Abete/'``` 

**OUTPUT**

Abete


- Ho provato prima questa versione in cui vado a filtrare la seconda colonna ```'{print $2}'``` andando a considerare la virgola come separatore nelle righe ```-F','``` usando il comando ```awk```

- Mediante il comando ```grep```, ho selezionato soltanto il cognome abete

- Mediante il comando ```sed``` sono andato a modificare il cognome abete in Abete in modo da stampare il cognome con la lettera maiuscola. <br> <br>


```awk -F',' '{print $2}' utenti.csv | grep "abete" | sed 's/abete/Abete/' &&  awk -F',' '{print $2}' utenti.csv | grep "minelli" | sed 's/minelli/Minelli/'```

**OUTPUT**

Abete <br> 
Minelli

Questo comando permette di prendere entrambi i cognomi con la lettera maiuscola ripetendo l’azione con una **AND**, ma selezionando ogni cognome uno alla volta con il comando ```grep```. <br> <br> <br>



**VERSIONE MIGLIORATA** <br> <br>


```awk -F',' '{print $2}' utenti.csv | grep -E "abete|presta" | sed 's/^./\U&/'```

**OUTPUT**

Abete<br>
Presta

- La seconda versione è uguale nell’esecuzione del comando ```awk```, ma ho passato un’espressione regolare al comando sed in modo da trasformare in maiuscole tutte le prime lettere della colonna cognomi (in questo caso solo cognomi selezionati).

- La ```sed``` va a sostituire il primo carattere trovato **^.** con la sua maiuscola **\U**, **&** prende il carattere selezionato. 

- Mediante il comando ```grep -E```, considero la regex ```"abete|presta"``` in modo da prelevare dalla seconda colonna solo le righe che contengono abete o presta. <br> <br>


```awk -F',' '{print $2}' utenti.csv | grep -E "abete|romano de mattia" | sed 's/\b./\U&/g'```

**OUTPUT**

Abete <br>
Romano De Mattia

Questa versione considera anche gli spazi nel cognome per cognomi composti, **\b** permette di considerare gli spazi tra il cognome prendendo l’inizio di ogni parola.
L’opzione **/g** è necessaria adesso in quanto la sostituzione deve essere applicata più di una volta.
