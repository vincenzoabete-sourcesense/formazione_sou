awk -F',' '{print $2}' utenti.csv | grep "abete" | sed 's/abete/Abete/' &&  awk -F',' '{print $2}' utenti.csv | grep "minelli" | sed 's/minelli/Minelli/'

awk -F',' '{print $2}' utenti.csv | grep -E "abete|presta" | sed 's/^./\U&/'

awk -F',' '{print $2}' utenti.csv | grep -E "abete|romano de mattia" | sed 's/\b./\U&/g'

