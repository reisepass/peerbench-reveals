#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 533e8977618fb941ad2c49d4bfec2cf4849a558fbe09b77d8aa794bc08ab23cf
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 533e8977618fb941ad2c49d4bfec2cf4849a558fbe09b77d8aa794bc08ab23cf"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
