#!/bin/bash

for f in `find . -name \*.ttl`
do python3 convert_to_dot.py $f | dot -Tpng -Grankdir=LR > ${f/png}

done
