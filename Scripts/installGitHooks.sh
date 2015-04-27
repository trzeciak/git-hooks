#!/bin/bash
#
#  Created by Damian Trzeciak on 28/04/15.
#  Copyright (c) 2015 Damian Trzeciak. All rights reserved.
#

DIR=`pwd`
cd "./$(git rev-parse --show-cdup)"

# ---------------------------------------------------[ changes ]

echo -e " .   \tInstall git hooks"
echo -e "   . \tLint pre-commit to 'Scripts/incrementBuildNumber.sh'"
ln -s -f ../../Scripts/incrementBuildNumber.sh .git/hooks/pre-commit

# -------------------------------------------------------[ end ]

cd "$DIR"
