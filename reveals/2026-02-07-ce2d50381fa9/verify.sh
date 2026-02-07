#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: ce2d50381fa9aeb60e5674e8020ed7641074aa86927f640e687015a6668b42b2
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: ce2d50381fa9aeb60e5674e8020ed7641074aa86927f640e687015a6668b42b2"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
