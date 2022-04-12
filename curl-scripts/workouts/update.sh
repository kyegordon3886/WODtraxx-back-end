#!/bin/bash

# NAME="Karen"
# TYPE="Chipper"
# DESCRIPTION="150 wall ball shots, for time"
# ID="6255c04f81f650511802d23a"
# TOKEN="04acbb72b5b623145048d0f2ae024dfb"

API="http://localhost:4741"
URL_PATH="/workouts"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
   "workout": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo