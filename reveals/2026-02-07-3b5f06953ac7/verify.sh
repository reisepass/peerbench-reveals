#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 3b5f06953ac763458f3519c838237726454b369c7a344d4608193ccf71af3275
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 3b5f06953ac763458f3519c838237726454b369c7a344d4608193ccf71af3275"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
