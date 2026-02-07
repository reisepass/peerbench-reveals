#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: fe4713de33dfeef838be8d84de62c71b413a0596a7ad2bab0114600707c9a921
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: fe4713de33dfeef838be8d84de62c71b413a0596a7ad2bab0114600707c9a921"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
