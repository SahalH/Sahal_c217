#/bin/sh

rm file3

rm file4


touch file3

comm -1 -3 <(sort file1) <(sort file2) > file3

comm -2 -3 <(sort file1) <(sort file2) > file4




echo "only these numbers are present in file 2"

sort -n file3 | awk '{print$1}'

echo "only these numbers are present in file 1"

sort -n file4 | awk '{print$1}'
