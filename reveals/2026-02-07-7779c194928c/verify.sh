#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 7779c194928cb9ab1f26523d943b3834b8a08b09f77a35f19808003108d5f52b
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 7779c194928cb9ab1f26523d943b3834b8a08b09f77a35f19808003108d5f52b"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
