#!/bin/bash

PID="-1"
ARGS=("$@") 
MONITOR_FILES_EXPR=${ARGS[0]}
INOTIFYTOOLS_BINPATH="./inotify-tools/usr/bin/inotifywait"

action() {
  command=
  [[ $PID != "-1" ]] && kill -9 $PID 2>/dev/null;
  SCRIPTS_AFTER_SECOND=("${ARGS[*]:1}")
  for script in $SCRIPTS_AFTER_SECOND; do
    command="$command $script"
  done

  echo "$command" | bash &

  PID=$!;
}

firstAction() {
  action
}

loopActions() {
  action
}

# firstAction

# while echo "inotifywait -qqre modify $MONITOR_FILES_EXPR" | bash; do
#   loopActions
# done