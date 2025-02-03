#!/bin/bash

# Create getting-started section
mkdir -p docs/getting-started
cat > docs/getting-started/overview.md << 'EOF'
# Platform Overview

Pictastic.ai provides a comprehensive solution for real estate media management and virtual staging...
EOF

# Create all documentation files from nav structure
declare -a files=(
    "media/overview.md"
    "media/upload-organization.md"
    "media/storage.md"
    "virtual-staging/overview.md"
    "virtual-staging/creating-designs.md"
    "virtual-staging/design-styles.md"
    "virtual-staging/credits-pricing.md"
    "albums/overview.md"
    "albums/creating-albums.md"
    "albums/sharing.md"
    "albums/managing-content.md"
    "project-sites/overview.md"
    "project-sites/creating-sites.md"
    "project-sites/property-websites.md"
    "project-sites/customization.md"
    "customization/themes.md"
    "customization/interface.md"
    "customization/branding.md"
    "account/profile.md"
    "account/subscription.md"
    "account/custom-domain.md"
    "system/trash.md"
    "system/storage.md"
    "system/specs.md"
)

for file in "${files[@]}"; do
    dir=$(dirname "docs/$file")
    mkdir -p "$dir"
    title=$(basename "$file" .md | sed 's/-/ /g' | awk '{for(i=1;i<=NF;i++)sub(/./,toupper(substr($i,1,1)),$i)}')
    cat > "docs/$file" << EOF
# $title

Content for $title...
EOF
done