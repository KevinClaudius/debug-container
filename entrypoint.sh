#!/usr/bin/env bash

wait_file() {
  local file="$1"; shift
  local wait_seconds="${1:-10}"; shift # 10 seconds as default timeout

  until test $((wait_seconds--)) -eq 0 -o -e "$file" ; do sleep 1; done

  ((++wait_seconds))
}

echo "Attempting to attach to the root of the original container's filesystem..."
wait_file "/proc/1/root" 5 || {
  echo "/proc/1/root missing after waiting for $? seconds. Failed to start at original container's pid 1 filesystem."
}

if [ -e "/proc/1/root" ]
then
    cd /proc/1/root
    echo "...successful!"
fi

echo "Debug tools available in this image:"
echo " - bash"

/bin/bash
