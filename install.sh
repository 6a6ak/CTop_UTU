#!/usr/bin/env bash

# install docker-ctop on Ubuntu/Debian

set -e

echo "[+] Installing dependencies..."
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release

echo "[+] Adding ctop repository key..."
echo 'deb [trusted=yes] https://azlux.fr/repo/ stable main' | \
sudo tee /etc/apt/sources.list.d/azlux.list > /dev/null

echo "[+] Updating package list..."
sudo apt update

echo "[+] Installing ctop..."
sudo apt install -y docker-ctop

echo
echo "[+] Done."
echo "[+] Run with:"
echo "ctop"