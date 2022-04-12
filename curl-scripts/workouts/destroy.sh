#!/bin/bash

# ID="6255c99a5c51ea580d529941"
# TOKEN="04acbb72b5b623145048d0f2ae024dfb"

API="http://localhost:4741"
URL_PATH="/workouts"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
