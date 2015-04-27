#!/bin/bash
# -----------------------------------[ dt-pre-commit-script.sh ]

FILE="dt-log.txt"
LOG=`date "+DATE-%Y-%m-%d_TIME-%H-%M-%S.txt"`

touch "$FILE"
NUM=$(($(cat "$FILE" | wc -l)+1))

echo -e " $NUM:\t $LOG\t\t`basename $0` $@"
echo -e " $NUM:\t $LOG\t\t`basename $0` $@" >> "$FILE"

