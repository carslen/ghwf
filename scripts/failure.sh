#!/usr/bin/env bash
set -e

echo "This script will fail"

images=("alpine" "gibtsnicht:1.23.34")

for image in "${images[@]}"; do
    error=$(docker pull "$image" 2>&1) ||
    echo -e "Failed to pull $image\n\nDetailed error message:\n$error" >> "$GITHUB_STEP_SUMMARY" &&
    exit 1
done
