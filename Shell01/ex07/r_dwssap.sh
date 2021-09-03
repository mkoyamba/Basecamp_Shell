#!/bin/sh
cat /etc/passwd | cut -d: -f1 | awk 'NR%2 == 0' | rev | sort -r | awk "$FT_LINE1<=NR && NR<=$FT_LINE2" | tr '\n' ' ' | sed '$ s/ $/.\n/' | sed 's/ /, /g' 