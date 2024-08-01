#!/bin/bash

# Set the correct domain here
DOMAIN="https://yourdomain.com"

# Set the directory where your Hugo public folder is located
PUBLIC_DIR="./public"

# Loop through all HTML files in the public directory
for file in $(find "$PUBLIC_DIR" -type f -name "*.html"); do
        # Replace the localhost:1313 URLs with the correct domain
        echo "DOMAIN: ${DOMAIN}"
        sed -i "s|https\?:\/\/localhost:1313|${DOMAIN}|g" "$file"
    done

echo "URLs have been updated successfully."
