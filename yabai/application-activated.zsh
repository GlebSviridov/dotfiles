#! /usr/bin/zsh

# Get all the windows of rider on current space
local RIDER_WINDOWS_ARRAY=$(yabai -m query --spaces --space \
  | jq -re ".index" \
  | xargs -I{} yabai -m query --windows --space {} \
  | jq -r 'map(select(."is-visible"))' \
  | jq -r 'map(select(.app=="JetBrains Rider"))')


local NUMBER_OF_WINDOWS=$(echo $RIDER_WINDOWS_ARRAY | jq -r 'length')

if [ "$NUMBER_OF_WINDOWS" -le "1" ]; then
    return 42
fi

if [ "$NUMBER_OF_WINDOWS" -eq "2" ]; then
    local FIRST_WINDOW_ID=$(echo $RIDER_WINDOWS_ARRAY | jq -r 'map(select(.app=="JetBrains Rider"))  |  .[0] | .id')
    local LAST_WINDOW_ID=$(echo $RIDER_WINDOWS_ARRAY | jq -r 'map(select(.app=="JetBrains Rider")) |  .[1] | .id')
else
    local FIRST_WINDOW_ID=$(echo $RIDER_WINDOWS_ARRAY | jq -r 'map(select(.app=="JetBrains Rider")) | map(select(."stack-index">0)) |  .[0] | .id')
    local LAST_WINDOW_ID=$(echo $RIDER_WINDOWS_ARRAY | jq -r 'map(select(.app=="JetBrains Rider"")) | map(select(."stack-index"==0)) | .[0] | .id')
fi

if [[ $FIRST_WINDOW_ID != 'null' && $LAST_WINDOW_ID != 'null' ]]; then;
    yabai -m window $FIRST_WINDOW_ID --stack $LAST_WINDOW_ID
fi
