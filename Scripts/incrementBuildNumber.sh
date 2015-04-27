#!/bin/bash
#
#  Created by Damian Trzeciak on 28/04/15.
#  Copyright (c) 2015 Damian Trzeciak. All rights reserved.
#

# ------------------------------------------------[ constantly ]

INFOPLIST_FILE="${INFOPLIST_FILE:-directory/Info.plist}"

# ----------------------------------------------[ calculations ]

BundleShortVersion=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "$INFOPLIST_FILE")
BundleVersion=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" "$INFOPLIST_FILE")
buildNumber=$[`echo "0.0.$BundleVersion" | rev | cut -d \. -f 1 | rev` + 1]
BundleVersion="$BundleShortVersion.$buildNumber"

# ---------------------------------------------------[ changes ]

echo -e "\tInfo: `basename $0`"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BundleVersion" "$INFOPLIST_FILE"
git add "$INFOPLIST_FILE"

# -------------------------------------------------------[ end ]
