#!/bin/bash
# NAME="Fake Ass CF workout"
# TYPE="AMRAP"
# DESCRIPTION="1 round = 1 pushup, 1 air squat"
# TOKEN="04acbb72b5b623145048d0f2ae024dfb"

API="http://localhost:4741"
URL_PATH="/workouts"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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
