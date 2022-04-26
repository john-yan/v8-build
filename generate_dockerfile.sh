#!/bin/bash

FILE_NAME=$1

MODE=$(echo $FILE_NAME | sed 's/Dockerfile.test-\([a-z]*\)-\([a-z]*\)/\1/')
V8_BRANCH=$(echo $FILE_NAME | sed 's/Dockerfile.test-\([a-z]*\)-\([a-z]*\)/\2/')

sed "s/TEMPLATE_MODE/$MODE/" < Dockerfile.test-template > $FILE_NAME
sed -i "s/TEMPLATE_BRANCH/$V8_BRANCH/" $FILE_NAME
sed -i "s/TEMPLATE_ARCH/$(uname -m)/" $FILE_NAME

