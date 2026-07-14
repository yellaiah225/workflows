#!/bin/bash
set -e

API_URL="https://api.github.com/repos/actions/runner/releases/latest"

echo "Fetching latest runner release..."
response=$(curl -s $API_URL)

tag_name=$(echo $response | jq -r '.tag_name')
created_at=$(echo $response | jq -r '.created_at')
updated_at=$(echo $response | jq -r '.updated_at')
published_at=$(echo $response | jq -r '.published_at')

echo "Latest Runner Version Info:"
echo "Tag: $tag_name"
echo "Created At: $created_at"
echo "Updated At: $updated_at"
echo "Published At: $published_at"
