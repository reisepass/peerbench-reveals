#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 93431e0da0c1f4cddc72ae84e7be253ecd4824ed80c6b32a36c34c85f03f4872
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 93431e0da0c1f4cddc72ae84e7be253ecd4824ed80c6b32a36c34c85f03f4872"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
