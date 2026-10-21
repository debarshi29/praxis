#!/usr/bin/env bash
# usage: templates/stress.sh "cmd sol" "cmd brute" "cmd gen"
# e.g.   templates/stress.sh "python sol.py" "python brute.py" "python gen.py"
# gen receives the seed as argv[1] and prints one small random test.
for i in $(seq 1 500); do
  $3 $i > in_s.txt
  $1 < in_s.txt > out_sol.txt
  $2 < in_s.txt > out_brute.txt
  if ! cmp -s out_sol.txt out_brute.txt; then
    echo "MISMATCH on seed $i"; cat in_s.txt; exit 1
  fi
done
echo "all 500 ok"
