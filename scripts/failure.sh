#!/usr/bin/env bash
set -e

echo "This script will fail"

images=("alpine" "ubuntu")

for image in "${images[@]}"; do
  echo "Pull $image"
  error=$(docker pull "$image" 2>&1) || #echo -e "Failed to pull image: $image\n\nDetailed error message:\n$error" >>"$GITHUB_STEP_SUMMARY"

  if [ "${PIPESTATUS[0]}" != "0" ]; then
    echo -e "Failed to pull image: $image\n\nDetailed error message:\n$error" >>"$GITHUB_STEP_SUMMARY"
    exit 1
  fi
done
