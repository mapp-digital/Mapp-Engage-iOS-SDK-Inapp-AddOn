#!/bin/bash

SRC_BUNDLE="$1"
DEST_BUNDLE="${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/AppoxeeInappResources.bundle"

# Fallback destination for non-Xcode builds (optional, adjust as needed)
if [ -z "$DEST_BUNDLE" ]; then
  DEST_BUNDLE="./AppoxeeInappResources.bundle"
fi

echo "🔍 Copying bundle from: $SRC_BUNDLE"
echo "📦 To destination: $DEST_BUNDLE"

# Ensure destination directory exists
mkdir -p "$(dirname "$DEST_BUNDLE")"

# Copy the bundle
if [ -d "$SRC_BUNDLE" ]; then
    cp -R "$SRC_BUNDLE" "$DEST_BUNDLE"
    echo "✅ Successfully copied AppoxeeInappResources.bundle to app resources."
else
    echo "❌ Error: AppoxeeInappResources.bundle not found at $SRC_BUNDLE"
    exit 1
fi
