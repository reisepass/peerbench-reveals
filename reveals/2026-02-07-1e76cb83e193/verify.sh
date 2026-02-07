#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: 1e76cb83e193b0c3abaf53c5815e51fe232aa0b4a479635073a4be3fba7d16ce
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: 1e76cb83e193b0c3abaf53c5815e51fe232aa0b4a479635073a4be3fba7d16ce"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
