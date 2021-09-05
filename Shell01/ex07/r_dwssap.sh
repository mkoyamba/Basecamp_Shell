#!/bin/bash
FT_LINE1=7
FT_LINE2=8
cat /etc/passwd | cut -d: -f1 | awk 'NR%2 == 0' | rev | sort -r | awk "NR >= $FT_LINE1 && NR <= $FT_LINE2" | tr '\n' ' ' | sed '$ s/ $/.\n/' | sed 's/ /, /g' | tr -d '\n'