#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: b60340576ae377ba3a307407370925d9900c7dd98ae7b7f1d47452a229a3ad7d
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: b60340576ae377ba3a307407370925d9900c7dd98ae7b7f1d47452a229a3ad7d"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
