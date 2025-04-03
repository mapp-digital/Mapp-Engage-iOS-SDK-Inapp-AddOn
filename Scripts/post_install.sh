#!/bin/bash

# Define paths
SRC_BUNDLE="${SRCROOT}/SDK/AppoxeeInappResources.bundle"
DEST_BUNDLE="${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app/AppoxeeInappResources.bundle"

# Ensure the destination directory exists
mkdir -p "${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app"

# Copy the bundle to the app resources
if [ -d "$SRC_BUNDLE" ]; then
    cp -R "$SRC_BUNDLE" "$DEST_BUNDLE"
    echo "✅ Successfully copied AppoxeeInappResources.bundle to app resources."
else
    echo "❌ Error: AppoxeeInappResources.bundle not found at $SRC_BUNDLE"
    exit 1
fi

# Hook into Mapp-Engage-iOS-SDK-Inapp-AddOn package installation
echo "🔄 Running post-install script for Mapp-Engage-iOS-SDK-Inapp-AddOn package..."

if [ -d "${SRCROOT}/Sources/Mapp-Engage-iOS-SDK-Inapp-AddOn" ]; then
    echo "✅ Mapp-Engage-iOS-SDK-Inapp-AddOn package detected. Running additional setup..."
    # Add any additional setup related to the package here
else
    echo "❌ Error: Mapp-Engage-iOS-SDK-Inapp-AddOn package not found. Ensure it's installed."
    exit 1
fi


