#!/bin/bash
BASE_DIR=/opt/soc/domain_stats
TARGET_ZIP="${BASE_DIR}/top-1m-alexa.csv.zip"
rm -f "$TARGET_ZIP"
/usr/bin/wget http://s3.amazonaws.com/alexa-static/top-1m.csv.zip -O "$TARGET_ZIP"
/usr/bin/unzip -o "$TARGET_ZIP" -d "$BASE_DIR/"
mv "$BASE_DIR/top-1m.csv" "$BASE_DIR/top-1m-alexa.csv"
rm -f "$TARGET_ZIP"
