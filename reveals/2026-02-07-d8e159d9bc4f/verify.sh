#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: d8e159d9bc4f566ce3bb3b08208cdb0209a919d5ab6dfb4c825a12b275c4b9c2
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: d8e159d9bc4f566ce3bb3b08208cdb0209a919d5ab6dfb4c825a12b275c4b9c2"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
