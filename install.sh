#!/usr/bin/env bash

set -e

VERSION="0.7.7"

echo "[+] Detecting architecture..."

ARCH=$(uname -m)

case $ARCH in
    x86_64)
        FILE="ctop-${VERSION}-linux-amd64"
        ;;
    aarch64|arm64)
        FILE="ctop-${VERSION}-linux-arm64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

echo "[+] Downloading ctop..."
curl -Lo ctop \
https://github.com/bcicen/ctop/releases/download/v${VERSION}/${FILE}

chmod +x ctop

echo "[+] Installing to /usr/local/bin..."
sudo mv ctop /usr/local/bin/ctop

echo "[+] Installed successfully"
echo
echo "Run with:"
echo "ctop"