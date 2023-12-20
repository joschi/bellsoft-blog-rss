#!/usr/bin/env bash
set -e -u -o pipefail

curl -fsSO 'https://bell-sw.com/page-data/blog/page-data.json'
mkdir _site
jq -f filter.jq page-data.json > _site/feed.json
