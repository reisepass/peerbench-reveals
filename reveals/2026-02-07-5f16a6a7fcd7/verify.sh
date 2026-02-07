#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 5f16a6a7fcd7a4c7aae940675ba6616cf1745f267e314f14564755bcf805cda6
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 5f16a6a7fcd7a4c7aae940675ba6616cf1745f267e314f14564755bcf805cda6"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
