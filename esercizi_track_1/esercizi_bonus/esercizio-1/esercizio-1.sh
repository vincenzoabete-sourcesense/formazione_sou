awk -F',' '{print $2}' utenti.csv | grep -E "abete|presta" | sed 's/^./\U&/'

awk -F',' '{print $2}' utenti.csv | grep -E "abete|romano de mattia" | sed 's/\b./\U&/g'

