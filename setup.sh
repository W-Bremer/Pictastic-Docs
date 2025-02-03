#!/bin/bash

# Configure pip
mkdir -p ~/.config/pip
echo "[global]
break-system-packages = true" > ~/.config/pip/pip.conf

# Create project directory and enter it
mkdir -p pictastic-docs
cd pictastic-docs

# Create virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install mkdocs-material mkdocs-minify-plugin mkdocs-git-revision-date-plugin

# Create documentation structure
mkdir -p docs/{media,virtual-staging,albums,project-sites,customization,account,system}
mkdir -p docs/assets/{images,css}
mkdir -p docs/getting-started

# Create custom CSS
cat > docs/assets/css/custom.css << 'EOF'
:root {
    --md-primary-fg-color: #00b8d4;
    --md-accent-fg-color: #0097a7;
}
EOF

# Create mkdocs.yml
cat > mkdocs.yml << 'EOF'
site_name: Pictastic.ai Docs
site_url: https://docs.pictastic.ai
site_description: Documentation for Pictastic.ai media management and virtual staging platform
site_author: Pictastic Team

theme:
  name: material
  logo: assets/images/logo.png
  favicon: assets/images/favicon.ico
  features:
    - navigation.tabs
    - navigation.sections
    - navigation.expand
    - navigation.top
    - search.suggest
    - search.highlight
    - content.code.copy
  palette:
    - scheme: default
      primary: teal
      accent: teal
      toggle:
        icon: material/brightness-7
        name: Switch to dark mode
    - scheme: slate
      primary: teal
      accent: teal
      toggle:
        icon: material/brightness-4
        name: Switch to light mode

plugins:
  - search
  - minify:
      minify_html: true
  - git-revision-date

markdown_extensions:
  - admonition
  - attr_list
  - def_list
  - footnotes
  - meta
  - pymdownx.details
  - pymdownx.highlight:
      anchor_linenums: true
  - pymdownx.inlinehilite
  - pymdownx.snippets
  - pymdownx.superfences
  - pymdownx.tabbed:
      alternate_style: true
  - toc:
      permalink: true

extra:
  analytics:
    provider: google
    property: !ENV GOOGLE_ANALYTICS_KEY
  social:
    - icon: fontawesome/brands/twitter
      link: https://twitter.com/pictastic
    - icon: fontawesome/brands/linkedin
      link: https://linkedin.com/company/pictastic

extra_css:
  - assets/css/custom.css

nav:
  - Home: index.md
  - Getting Started:
    - Overview: getting-started/overview.md
  - Media:
    - Media Management: media/overview.md
    - Upload & Organization: media/upload-organization.md
    - Storage Management: media/storage.md
  - Virtual Staging:
    - Virtual Staging AI: virtual-staging/overview.md
    - Creating Designs: virtual-staging/creating-designs.md
    - Design Styles: virtual-staging/design-styles.md
    - Credits & Pricing: virtual-staging/credits-pricing.md
  - Albums:
    - Albums: albums/overview.md
    - Creating Albums: albums/creating-albums.md
    - Sharing Options: albums/sharing.md
    - Managing Content: albums/managing-content.md
  - Project Sites:
    - Project Sites: project-sites/overview.md
    - Creating Sites: project-sites/creating-sites.md
    - Property Websites: project-sites/property-websites.md
    - Site Customization: project-sites/customization.md
  - Customization:
    - Themes: customization/themes.md
    - Interface Settings: customization/interface.md
    - Branding: customization/branding.md
  - Account:
    - Profile Settings: account/profile.md
    - Subscription Management: account/subscription.md
    - Custom Domain: account/custom-domain.md
  - System:
    - Trash Management: system/trash.md
    - Storage Management: system/storage.md
    - Technical Specifications: system/specs.md
EOF

# Create base documentation files
cat > docs/index.md << 'EOF'
# Welcome to Pictastic.ai

Pictastic.ai is a powerful media management and virtual staging platform designed for real estate professionals. Our platform combines traditional media management capabilities with AI-powered virtual staging features to help showcase properties effectively.

## Key Features

- Media Management & Organization
- AI-Powered Virtual Staging
- Project Sites & Property Websites
- Custom Domain Support
- Advanced Sharing Options

[Get Started](getting-started/overview.md){ .md-button .md-button--primary }
EOF

# Create getting started overview
cat > docs/getting-started/overview.md << 'EOF'
# Getting Started with Pictastic.ai

Learn how to get started with Pictastic.ai's powerful media management and virtual staging platform.
EOF

# Create section overviews
for section in media virtual-staging albums project-sites customization account system; do
  title=$(echo "$section" | sed -e 's/-/ /g' -e 's/\b\(.\)/\u\1/g')
  cat > "docs/$section/overview.md" << EOF
# $title Overview

Overview content for the $title section...
EOF
done

# Create deployment script
cat > deploy.sh << 'EOF'
#!/bin/bash
source .venv/bin/activate
mkdocs build
EOF
chmod +x deploy.sh

# Create development script
cat > serve.sh << 'EOF'
#!/bin/bash
source .venv/bin/activate
mkdocs serve
EOF
chmod +x serve.sh

echo "MkDocs project structure created successfully!"
echo "To start the development server, run: ./serve.sh"
echo "To build the documentation, run: ./deploy.sh"