#!/bin/bash

# RepoDiffMatch Uninstall Script

INSTALL_DIR="$HOME/.repodiffmatch"
BIN_DIR="$HOME/.local/bin"

echo "Uninstalling RepoDiffMatch..."

# Remove installation directory
if [[ -d "$INSTALL_DIR" ]]; then
    rm -rf "$INSTALL_DIR"
    echo "Removed $INSTALL_DIR"
fi

# Remove binary
if [[ -f "$BIN_DIR/repodm" ]]; then
    rm "$BIN_DIR/repodm"
    echo "Removed $BIN_DIR/repodm"
fi

echo "RepoDiffMatch uninstalled successfully!"
echo "Note: PATH modifications in shell config files were not removed automatically."
