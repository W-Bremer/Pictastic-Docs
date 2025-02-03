# Project Sites Customization

## Feature Overview
The Project Sites customization module allows real estate professionals to personalize their client-facing property showcase pages. This feature enables users to create branded, professional property websites that match their company's identity while presenting property media and virtual staging in an engaging way.

## Key Functionality
- Custom domain integration
- Brand color scheme customization 
- Logo upload and placement options
- Header and footer customization
- Navigation menu configuration
- Custom CSS implementation
- Mobile responsiveness settings
- Contact form customization
- Social media integration
- Analytics tracking

## Usage Instructions

### Accessing Customization Settings
1. Navigate to Settings > Project Sites
2. Select the project site you wish to customize
3. Click "Customize" to open the visual editor

### Basic Customization
```markdown
1. Brand Colors
   - Primary color: Used for buttons and key elements
   - Secondary color: Used for accents and highlights
   - Background color: Sets the main background tone

2. Logo Settings
   - Upload logo (supported formats: PNG, SVG, JPEG)
   - Set logo dimensions (recommended: 200x60px)
   - Choose logo placement (left, center, right)

3. Typography
   - Select header font
   - Select body font
   - Adjust font sizes for different elements
```

### Advanced Customization
```markdown
1. Custom CSS
   - Access CSS editor via Advanced > Custom CSS
   - Add custom styles using provided selectors
   - Test changes in preview mode before publishing

2. Layout Configuration
   - Adjust grid layout (2-4 columns)
   - Set image aspect ratios
   - Configure spacing between elements

3. Contact Form
   - Add/remove form fields
   - Set required fields
   - Customize form submission actions
```

## Best Practices

### Design Guidelines
- Maintain consistent branding across all project sites
- Ensure sufficient contrast between text and background
- Keep navigation simple and intuitive
- Test customization on multiple devices
- Limit custom CSS to necessary modifications

### Performance Optimization
- Compress images before upload
- Minimize custom CSS
- Use provided templates as starting points
- Test load times after customization

### Content Organization
- Group similar properties together
- Use clear, descriptive headings
- Implement logical navigation structure
- Include clear calls-to-action

## Technical Details

### Supported Browsers
- Chrome (latest 2 versions)
- Firefox (latest 2 versions)
- Safari (latest 2 versions)
- Edge (latest 2 versions)

### File Specifications
```markdown
Images:
- Maximum file size: 5MB
- Recommended formats: PNG, JPEG
- Logo maximum dimensions: 400x100px

Custom CSS:
- Max file size: 100KB
- Supported selectors: See CSS documentation
- !important declarations limited to essential overrides
```

### Domain Configuration
```markdown
1. Custom Domains
   - Add CNAME record pointing to sites.pictastic.ai
   - SSL certificates automatically provisioned
   - DNS propagation: 24-48 hours

2. Subdomains
   - Format: [projectname].pictastic.ai
   - Automatically configured
   - Instant availability
```

### Analytics Integration
```markdown
- Google Analytics 4 support
- Facebook Pixel integration
- Custom event tracking
- Conversion monitoring
```

### Security Features
- SSL encryption (forced HTTPS)
- XSS protection
- CSRF tokens
- Rate limiting
- Content security policy

### API Access
```markdown
Endpoint: api.pictastic.ai/v1/project-sites
Methods:
- GET /customization
- PUT /customization
- PATCH /customization/{element}
Authentication: Bearer token required
```

For additional support or custom implementation assistance, contact our technical support team at support@pictastic.ai.