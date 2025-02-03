# Project Sites & Property Websites

## Feature Overview
Project Sites enables real estate professionals to create customized, mobile-responsive property websites for individual listings or entire developments. Each website automatically syncs with your Pictastic.ai media assets and can be shared with a unique URL.

## Key Functionality
- **Instant Website Generation**: Create branded property websites in minutes
- **Media Synchronization**: Automatic syncing with your Pictastic.ai photo galleries, virtual stagings, and 360° tours
- **Custom Domain Support**: Use your own domain or our provided subdomain (yourname.pictastic.ai)
- **Lead Capture**: Built-in contact forms and lead management system
- **Analytics Dashboard**: Track visitor engagement and lead statistics
- **Mobile Optimization**: Responsive design works across all devices

## Usage Instructions

### Creating a New Property Website
1. Navigate to Dashboard > Project Sites
2. Click "Create New Site"
3. Select a template or start from scratch
4. Enter property details:
   - Address
   - Price
   - Description
   - Features
   - Agent information

### Adding Media
1. Select "Media Gallery" tab
2. Choose from your existing Pictastic.ai assets or upload new ones
3. Drag and drop to arrange media order
4. Add captions and alt text for SEO

### Customizing Design
1. Click "Design Settings"
2. Modify:
   - Color scheme
   - Typography
   - Layout options
   - Header style
   - Contact form placement

### Publishing
1. Preview your site
2. Configure URL settings
3. Click "Publish"
4. Share your unique URL or set up custom domain

## Best Practices

### Media Optimization
- Use high-resolution images (minimum 2000px wide)
- Include a mix of photos, virtual stagings, and 360° tours
- Limit gallery to 25-30 images for optimal loading speed

### Content Structure
- Place most important information above the fold
- Use clear, scannable headings
- Include neighborhood information
- Add property features in bullet points

### SEO
- Fill out all meta descriptions
- Use location-specific keywords
- Add alt text to all images
- Include property specifications in structured data

### Lead Generation
- Place contact forms strategically
- Enable chat functionality
- Include clear calls-to-action
- Set up lead notification emails

## Technical Details

### System Requirements
- Supported browsers: Chrome 80+, Firefox 75+, Safari 13+, Edge 80+
- Minimum internet speed: 10 Mbps
- Maximum media file size: 25MB per image

### API Integration
```javascript
// Example API endpoint for creating new site
POST /api/v1/project-sites
{
  "property_id": "123456",
  "template_id": "modern-1",
  "domain_settings": {
    "custom_domain": "123main.com",
    "ssl_enabled": true
  }
}
```

### Performance Specs
- Page load time: < 3 seconds
- Image optimization: automatic WebP conversion
- CDN delivery: Global edge locations
- SSL: Free SSL certificates included

### Storage Limits
- Standard plan: 10 active sites, 1GB storage per site
- Professional plan: Unlimited sites, 5GB storage per site
- Enterprise plan: Custom limits

### Custom Domain Setup
1. Add CNAME record pointing to `sites.pictastic.ai`
2. Verify domain ownership
3. Wait for SSL propagation (24-48 hours)
4. Configure domain in site settings

For additional support or custom requirements, contact our technical team at support@pictastic.ai.