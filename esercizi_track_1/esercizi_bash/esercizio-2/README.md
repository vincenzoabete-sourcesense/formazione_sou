# Esercizio 2

**NumeroProcessi: Contare il numero totale di processi attualmente in esecuzione sulla propria macchina senza utilizzare utility interattive come "top"**

- Per contare il numero totale di processi attualmente in esecuzione ho utilizzato il comando: **ps -e | wc -l**

- **ps -e** lo uso per visualizzare tutti i processi attualmente in esecuzione, l’output lo indirizzo tramite pipe a **wc -l** per contare il numero di righe.
