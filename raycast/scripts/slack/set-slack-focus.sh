#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Focus
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/slack-logo.png

# Documentation:
# @raycast.description Sets the Slack Status to "focus" when the pomodoro timer is started


# Configuration

# To create a new API token, do the following:
# 1. Create a new Slack app at https://api.slack.com/authentication/basics
# 2. Add `users.profile:write` to the user token scopes
# 3. Install the app to your workplace
# 4. Insert your OAuth access token below
API_TOKEN=""

# Short status text (max. 100 characters)
STATUS_TEXT="Focus"

# String referencing an emoji enabled for the Slack team
STATUS_EMOJI=":dart:"

# Minutes until the the status will expire (Empty string will not expire the status)
STATUS_EXPIRATION_IN_MINUTES="50"

# Main program

open "raycast://extensions/asubbotin/pomodoro/pomodoro-control-timer"

if [[ -z "$API_TOKEN" ]]
then
  echo "No API token provided"
  exit 1
fi

if [[ -z "$STATUS_EXPIRATION_IN_MINUTES" ]]
then
  STATUS_EXPIRATION=0
else
  CURRENT_UNIX_TIME=$(date +%s)
  STATUS_EXPIRATION=$(($CURRENT_UNIX_TIME + ($STATUS_EXPIRATION_IN_MINUTES * 60)))
fi

RESPONSE=$(
curl \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer $API_TOKEN" \
  --request POST \
  --data "{ 'profile': { 'status_text': '$STATUS_TEXT', 'status_emoji': '$STATUS_EMOJI', 'status_expiration': $STATUS_EXPIRATION } }" \
  --silent \
  --show-error \
  --fail \
  "https://slack.com/api/users.profile.set"
)

if [[ "$RESPONSE" =~ "error" ]]
then
  echo "Failed to set status in Slack"
  exit 1
fi

RESPONSE=$(
curl \
  --header "Content-Type: application/x-www-form-urlencoded" \
  --request POST \
  --data "token=$API_TOKEN&num_minutes=$STATUS_EXPIRATION_IN_MINUTES" \
  --silent \
  --show-error \
  --fail \
  "https://slack.com/api/dnd.setSnooze"
)

if [[ "$RESPONSE" =~ "error" ]]
then
  echo "Failed to set DND status in Slack"
  exit 1
fi

echo "Turned DND on in Slack for $STATUS_EXPIRATION_IN_MINUTES" minutes
