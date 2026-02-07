#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 66ea1ed53479a17d36d4a424cb8c94e09a7179aa36dc0a046bc67a834d37d2e2
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 66ea1ed53479a17d36d4a424cb8c94e09a7179aa36dc0a046bc67a834d37d2e2"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
