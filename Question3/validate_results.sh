#!/bin/bash

pass_all=0
fail_one=0

while IFS=',' read -r roll name m1 m2 m3
do
    fail=0

    [ "$m1" -lt 33 ] && fail=$((fail+1))
#!/bin/bash

pass_all=0
fail_one=0

while IFS=',' read -r roll name m1 m2 m3
do
    fail=0

    [ "$m1" -lt 33 ] && fail=$((fail+1))
    [ "$m2" -lt 33 ] && fail=$((fail+1))
    [ "$m3" -lt 33 ] && fail=$((fail+1))

    if [ "$fail" -eq 0 ]; then
        echo "$name passed all subjects"
        pass_all=$((pass_all+1))
    elif [ "$fail" -eq 1 ]; then
        echo "$name failed in exactly one subject"
        fail_one=$((fail_one+1))
    fi
done < marks.txt

echo "Total students passed all subjects: $pass_all"
echo "Total students failed in one subject: $fail_one"
    [ "$m2" -lt 33 ] && fail=$((fail+1))
    [ "$m3" -lt 33 ] && fail=$((fail+1))

    if [ "$fail" -eq 0 ]; then
        echo "$name passed all subjects"
        pass_all=$((pass_all+1))
    elif [ "$fail" -eq 1 ]; then
        echo "$name failed in exactly one subject"
        fail_one=$((fail_one+1))
    fi
done < marks.txt

echo "Total students passed all subjects: $pass_all"
echo "Total students failed in one subject: $fail_one"
