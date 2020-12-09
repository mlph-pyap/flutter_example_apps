#!/bin/bash
set -xeuo pipefail
set -u


gcp_env=$CIRCLE_BRANCH
api_key_map="$API_KEY_MAP_RELEASE"


echo $gcp_env
touch android/buildConfig/environment.properties
cp android/buildConfig/environment.circle-template.properties android/buildConfig/environment.properties

sed -i "1s/api_key_map/$api_key_map/" android/buildConfig/environment.properties
