#!/bin/bash
set -xeuo pipefail
set -u
gcp_env="circleci-project-setup"
api_key_map="$API_KEY_MAP_RELEASE"


echo $gcp_env
touch ios/Runner/buildConfig/environment.xcconfig
cp ios/Runner/buildConfig/environment.circle-template.xcconfig ios/Runner/buildConfig/environment.xcconfig

gsed -i "1s/api_key_map/$api_key_map/" ios/Runner/buildConfig/environment.xcconfig
