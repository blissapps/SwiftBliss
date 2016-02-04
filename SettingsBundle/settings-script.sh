#!/bin/sh

#  embly-settings-script.sh
#  Embly
#
#  Created by Carlos Aguiar on 04/02/16.
#  Copyright © 2016 Bliss Applications. All rights reserved.

INFOPLISTPATH="${TARGET_BUILD_DIR}/${EXECUTABLE_NAME}.app/Info.plist"
VERSION_LIST_PATH="${TARGET_BUILD_DIR}/${EXECUTABLE_NAME}.app/Settings.bundle/Version.plist"

# Location of PlistBuddy
PLISTBUDDY="/usr/libexec/PlistBuddy"

BUILD_VERSION=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" $INFOPLISTPATH)
BUILD_NUMBER=$(/usr/libexec/PlistBuddy -c "Print CFBundleVersion" $INFOPLISTPATH)
# Get the current git commmit hash (first 7 characters of the SHA)
GITREVSHA=$(git --git-dir="${PROJECT_DIR}/.git" --work-tree="${PROJECT_DIR}" rev-parse --short HEAD)

echo "INFOPLISTPATH = ${INFOPLISTPATH}"
echo "VERSION_LIST_PATH = ${VERSION_LIST_PATH}"
echo "BUILD_VERSION = ${BUILD_VERSION}"
echo "BUILD_NUMBER = ${BUILD_NUMBER}"
echo "GIT SHA = ${GITREVSHA}"


# Set the Git hash in the info plist for reference
$PLISTBUDDY -c "Set :PreferenceSpecifiers:1:DefaultValue $BUILD_VERSION" "${VERSION_LIST_PATH}"
$PLISTBUDDY -c "Set :PreferenceSpecifiers:2:DefaultValue $BUILD_NUMBER" "${VERSION_LIST_PATH}"
$PLISTBUDDY -c "Set :PreferenceSpecifiers:3:DefaultValue $GITREVSHA" "${VERSION_LIST_PATH}"