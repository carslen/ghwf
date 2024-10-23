#!/usr/bin/env bash

echo "This script will fail"

images=("alpine" "gibtsnicht:1.23.34")

for image in "${images[@]}"; do
    error=$(docker pull "$image" 2>&1) || echo -e "Failed to pull $image\n\nDetailed error message:\n```\n"$error"\n```" >> "$GITHUB_STEP_SUMMARY"
done
