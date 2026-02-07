#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: f55e0de9e26bc33578a60e2b29bb7f5b62c5dde9a2b66062e61d989ab0eb9f39
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: f55e0de9e26bc33578a60e2b29bb7f5b62c5dde9a2b66062e61d989ab0eb9f39"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
