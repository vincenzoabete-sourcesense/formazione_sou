# Esercizio 3

**KernelVersion: Trovare il modo (o più modi) per capire se il Kernel attualmente running è il più recente installato sulla macchina. Scrivere uno script che esegua automaticamente il controllo e risponda TRUE/FALSE**

-Ho utilizzato **uname -r** per prendere la versione del kernel corrente e **rpm -q kernel** per prendere tutte le versioni del kernel installate che risultavano essere solo una con il parametro kernel- davanti. Ho sostituito “kernel-” con una stringa vuota mediante comando sed per ottenere risultato TRUE dall’esecuzione dell’if.

-**var_2=$(rpm -q kernel --qf ‘%{VERSION}-%{RELEASE}.%{ARCH}\n’)** 
Ho utilizzato anche questa versione per avere la stessa stringa presentata dal comando uname -r.

