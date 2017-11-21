#!/bin/bash

set -e

CURRENT_NAME="Boots"
CURRENT_OTP="boots"
CURRENT_OTP_WEB="boots_web"

NEW_NAME="Tt"
NEW_OTP="tt"
NEW_OTP_WEB="tt_web"

ag -l --ignore rename.sh $CURRENT_NAME | xargs sed -i '' -e "s/$CURRENT_NAME/$NEW_NAME/g"
ag -l --ignore rename.sh $CURRENT_OTP | xargs sed -i '' -e "s/$CURRENT_OTP/$NEW_OTP/g"

mv lib/$CURRENT_OTP lib/$NEW_OTP
mv lib/$CURRENT_OTP.ex lib/$NEW_OTP.ex
mv lib/$CURRENT_OTP_WEB lib/$NEW_OTP_WEB
mv lib/$CURRENT_OTP_WEB.ex lib/$NEW_OTP_WEB.ex
