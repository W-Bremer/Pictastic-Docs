# Customization & Branding

## Feature Overview
The customization and branding features allow real estate professionals to maintain consistent brand identity across all media assets managed through Pictastic.ai. Users can customize various elements including watermarks, color schemes, logos, and branded templates for virtual staging and property marketing materials.

## Key Functionality
- Custom watermark placement and styling
- Brand color scheme implementation
- Logo integration
- Custom templates for virtual staging
- Branded export presets
- Multi-brand profile management
- White-label options for enterprise users

## Usage Instructions

### Setting Up Brand Profiles
1. Navigate to `Settings > Brand Management`
2. Click `Create New Brand Profile`
3. Fill in the following required fields:
   - Brand name
   - Primary color (HEX/RGB)
   - Secondary color (HEX/RGB)
   - Logo upload (PNG/SVG, min 300px width)

### Configuring Watermarks
1. Go to `Settings > Watermark Settings`
2. Upload your watermark image (PNG with transparency)
3. Configure placement options:
   - Position (9 anchor points available)
   - Size (percentage of image width)
   - Opacity (0-100%)
   - Margin from edges (px)

### Creating Branded Templates
1. Access `Templates > Create New`
2. Choose template type:
   - Virtual staging
   - Property listing
   - Social media post
3. Customize template elements:
   - Background
   - Text styles
   - Logo placement
   - Color scheme
4. Save template to your library

## Best Practices

### Watermarks
- Use PNG format with transparency
- Keep design simple and legible
- Maintain reasonable size (recommended: 10-15% of image width)
- Consider placement that doesn't interfere with key image elements

### Logos
- Upload vector formats (SVG) when possible
- Provide both light and dark versions
- Maintain minimum clear space around logo
- Keep file sizes under 1MB

### Color Schemes
- Define primary and secondary colors
- Include complementary accent colors
- Consider contrast ratios for accessibility
- Document color codes (HEX/RGB) for consistency

### Templates
- Create templates for common use cases
- Test templates across different image sizes
- Keep designs clean and professional
- Include variable fields for dynamic content

## Technical Details

### Supported File Formats
- Images: PNG, JPG, TIFF
- Vectors: SVG, AI
- Logos: PNG, SVG
- Watermarks: PNG with transparency

### Resolution Requirements
- Logos: Minimum 300px width
- Watermarks: Minimum 200px width
- Templates: 2000px × 2000px recommended

### File Size Limits
- Logos: 1MB max
- Watermarks: 500KB max
- Templates: 5MB max

### Color Specifications
- HEX codes
- RGB values
- CMYK values (for print templates)

### API Integration
```json
{
  "endpoint": "/api/v1/branding",
  "methods": ["GET", "POST", "PUT", "DELETE"],
  "authentication": "Bearer token required",
  "rate_limit": "100 requests/hour"
}
```

### Cache Management
- Brand assets cached for 24 hours
- Force cache refresh available via API
- CDN distribution for global access

### White-Label Features (Enterprise)
- Custom domain support
- Branded login page
- Custom email templates
- Dedicated IP addresses
- Custom SSL certificates

For additional support or custom branding requirements, contact our support team at support@pictastic.ai or visit our help center.