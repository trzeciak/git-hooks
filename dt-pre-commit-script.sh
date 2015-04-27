#!/bin/bash
# -----------------------------------[ dt-pre-commit-script.sh ]

FILE="dt-log.txt"
LOG=`date "+DATE-%Y-%m-%d_TIME-%H-%M-%S.txt"`

# --------------------------------

touch "$FILE"
NUM=$(($(cat "$FILE" | wc -l)+1))
MSG=" $NUM:\t $LOG\t\t`basename $0` $@"

# --------------------------------


# --------------------------------

echo ""
echo ""
echo "Info: Pre-commit."
echo ""
echo -e "$MSG"
echo -e "$MSG" >> "$FILE"
git add "$FILE"
echo ""
echo ""

# --------------------------------

