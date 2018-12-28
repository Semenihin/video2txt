#/bin/bash
./run1.sh> t.txt
cat t.txt| grep -P -o "k\d{1,}.jpg"|grep -P -o "\d{1,}" > r1.txt
cat t.txt|grep "^  0)" | awk '{f=$1; $1=""; print $0;}'> r2.txt
paste  r1.txt r2.txt | sort -nk1 > t.txt
