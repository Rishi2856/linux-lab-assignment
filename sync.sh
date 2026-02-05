#!/bin/bash

echo "Files only in dirA:"
comm -23 <(ls dirA | sort) <(ls dirB | sort)

echo
echo "Files only in dirB:"
comm -13 <(ls dirA | sort) <(ls dirB | sort)

echo
echo "Common files comparison:"
for file in $(comm -12 <(ls dirA | sort) <(ls dirB | sort))
do
    cmp dirA/$file dirB/$file && echo "$file : Same" || echo "$file : Different"
done
