#!/usr/bin/env bash
# Verify this reveal against the PeerBench commitment
# Commitment hash: c1ae0cfdf4ba9dc78f6fe0dfc2a1fa4c85c7a2cc2298c393db6b24520b483564
#
# Requirements: npm (for npx)
#
# Usage: ./verify.sh

set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Verifying PeerBench reveal..."
echo "  Commitment: c1ae0cfdf4ba9dc78f6fe0dfc2a1fa4c85c7a2cc2298c393db6b24520b483564"
echo ""

if [ -f "$DIR/commitment.json" ]; then
  npx @peerbench/sdk verify "$DIR/commitment.json"
else
  echo "No commitment.json found in reveal folder."
  echo "Download it from the server or the original committer."
fi
