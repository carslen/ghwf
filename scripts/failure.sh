#!/usr/bin/env bash
set -e

echo "This script will fail"

images=("alpine" "gibtsnicht:1.12.123")

for image in "${images[@]}"; do
  error=$(docker pull "$image" 2>&1) || echo -e "Failed to pull image: <code>$image</code>\n\nDetailed error message:\n<code>$error</code>" >> "$GITHUB_STEP_SUMMARY"

#  if [ "${PIPESTATUS[0]}" != "0" ]; then
#    echo -e "Failed to pull image: $image\n\nDetailed error message:\n$error" >>"$GITHUB_STEP_SUMMARY"
#    exit 1
#  fi
done
