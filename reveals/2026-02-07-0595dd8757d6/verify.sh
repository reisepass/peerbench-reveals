#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 0595dd8757d6364647a853c7817b33398909ca68bb9bc6cc7fd225b7c661e851
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 0595dd8757d6364647a853c7817b33398909ca68bb9bc6cc7fd225b7c661e851"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
