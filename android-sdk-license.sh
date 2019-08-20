#!/bin/bash

<< ////
The script creates 'licenses' under '$ANDROID_HOME' and creates a file which proves 
that the SDK license was accepted by the user.
Please copy this to your own account/gist/server. Every time there's an updated license, update the file with the new 
license hash.
Legally if you run this script (or your own version of it), it means YOU accepted the license - don't trust someone else.
The hashes below are supposed to be taken from $ANDROID_HOME/licenses/android-sdk-license on YOUR machine, after you 
accepted the license yourself.
See here for more info: https://developer.android.com/studio/intro/update#download-with-gradle
Usage:
In .travis.yml
before_script:
  - curl URL_OF_THIS_FILE | sh
  
In jitpack.yml
before_install:
  - curl URL_OF_THIS_FILE | sh
////

set -ex

cd $ANDROID_HOME
mkdir -p licenses

cat << EOF >> licenses/android-sdk-license
8933bad161af4178b1185d1a37fbf41ea5269c55
d56f5187479451eabf01fb78af6dfcb131a6481e
24333f8a63b6825ea9c5514f83c2829b004d1fee
EOF
