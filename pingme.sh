#!/bin/bash
# ~/bin/pingme # file permissions -> 755

# Adjust this to point to a nice notification sound
FULL_PATH_TO_AUDIO_FILE="$HOME/notification.wav"

function play_sound {
  # Adjust this command as needed for your operating system
    afplay $FULL_PATH_TO_AUDIO_FILE
}

if [[ $# -gt 0 ]]; then
  # Assume a PID has been passed
  # Check if there's diff in PID count
  INITIAL_VALUE=$(ps -e | grep $1 | wc -l)
  NEW_VALUE=$(ps -e | grep $1 | wc -l)
  while [[ $INITIAL_VALUE == $NEW_VALUE ]]; do
    NEW_VALUE=$(ps -e | grep $1 | wc -l)
    sleep 1
  done
  play_sound
else
  play_sound
fi
