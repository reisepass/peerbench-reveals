#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 1c7abf1db50cf62d3512e07484a82b429e41aafbc1ab393887204bf64bc15674
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 1c7abf1db50cf62d3512e07484a82b429e41aafbc1ab393887204bf64bc15674"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
