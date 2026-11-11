# Esercizio 4

**Find e Cron: Utilizzare il comando find per trovare e cancellare i file più vecchi di 30 giorni (ad esempio in /var/log o simili). Schedulare tale comando in crontab di root ogni lunedi mattina alle 6:30. Sulle manpages trovate tutte le info di cui avete bisogno**

- Ho scritto il comando **sudo crontab -e**, mi si è aperto l’editor di testo VI, e lì ho scritto il seguente comando: **30 6 * * 1 find /var/log -type f -mtime +30 -delete**

- Il comando find prende tutti i file nella directory /var/log (-type f) più vecchi di 30 giorni (-mtime +30) e -delete li cancella.

- 30 6 * * 1, qui abbiamo la nomenclatura di crontab dove 1 rappresenta Lunedì, alle 6:30 ogni mese e ogni settimana.
