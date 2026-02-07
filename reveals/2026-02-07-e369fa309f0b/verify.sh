#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: e369fa309f0b967cdf16c682f6f3446b1b604e908928d1c61424fb0e2ce69b23
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: e369fa309f0b967cdf16c682f6f3446b1b604e908928d1c61424fb0e2ce69b23"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
