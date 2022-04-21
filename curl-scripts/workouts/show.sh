
#!/bin/sh

# ID="6255b9b681f650511802d239"
# TOKEN="04acbb72b5b623145048d0f2ae024dfb"

API="http://localhost:4741"
URL_PATH="/workouts"

curl "${API}${URL_PATH}/${NAME}" \
  --include \
  --request GET \
  # --header "Authorization: Bearer ${TOKEN}"
  --data '{
   "workout": {
      "name": "'"${NAME}"'",
      "type": "'"${TYPE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
