Esercizio 1

■ Touch: Illustrare almeno 2 casi in cui il comando touch può generare una condizione di errore.

Ho provato a lanciare il comando touch /file.txt e mi dice che non ho i permessi per scrivere in root.

Ho provato poi a lanciare touch /home/vincenzo/prova/file.txt e mi dice che non esiste la cartella prova


Esercizio 2

■ NumeroProcessi: Contare il numero totale di processi attualmente in esecuzione sulla propria macchina senza utilizzare utility interattive come "top".

Per contare il numero totale di processi attualmente in esecuzione ho utilizzato il comando:
ps -e | wc -l

ps -e lo uso per visualizzare tutti i processi attualmente in esecuzione, l’output lo indirizzo tramite pipe a wc -l per contare il numero di righe.


Esercizio 3

■ KernelVersion: Trovare il modo (o più modi) per capire se il Kernel attualmente running è il più recente installato sulla macchina. Scrivere uno script che esegua automaticamente il controllo e risponda TRUE/FALSE.

Ho utilizzato uname -r per prendere la versione del kernel corrente e rpm -q kernel per prendere tutte le versioni del kernel installate che risultavano essere solo una con il parametro kernel- davanti.
Ho sostituito “kernel-” con una stringa vuota mediante comando sed per ottenere risultato TRUE dall’esecuzione dell’if.

var_2=$(rpm -q kernel --qf ‘%{VERSION}-%{RELEASE}.%{ARCH}\n’)
Ho utilizzato anche questa versione per avere la stessa stringa presentata dal comando uname -r.

Esercizio 4

■ Find e Cron: Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno.

Ho scritto il comando sudo crontab -e, mi si è aperto l’editor di testo VI, e lì ho scritto il seguente comando: 30 6 * * 1 find /var/log -type f -mtime +30 -delete.

Il comando find prende tutti i file nella directory /var/log (-type f) più vecchi di 30 giorni (-mtime +30) e -delete li cancella.

30 6 * * 1, qui abbiamo la nomenclatura di crontab dove 1 rappresenta Lunedì, alle 6:30 ogni mese e ogni settimana.


