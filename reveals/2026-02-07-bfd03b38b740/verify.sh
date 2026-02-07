#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: bfd03b38b7409f789bebcfeb6c57a1f87de60134f374e6231812c433f094a9c8
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: bfd03b38b7409f789bebcfeb6c57a1f87de60134f374e6231812c433f094a9c8"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
