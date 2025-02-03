# Creating Sites in Pictastic.ai

## Feature Overview
Sites in Pictastic.ai serve as containers for organizing real estate media assets and virtual staging projects. Each site represents a distinct property listing and can contain multiple rooms, photos, and virtual staging variations.

## Key Functionality
- Create unlimited sites for different properties
- Organize media assets by property location
- Group related virtual staging projects
- Share site access with team members
- Track project progress and staging status
- Manage property-specific settings and preferences

## Usage Instructions

### Creating a New Site
1. Navigate to the Dashboard
2. Click the "+ New Site" button in the top right
3. Fill in the required information:
   - Site Name (e.g., "123 Main Street")
   - Property Address
   - Property Type (Residential/Commercial)
   - Project Status
4. Click "Create Site" to confirm

### Configuring Site Settings
1. Open the site from your dashboard
2. Click the "Settings" gear icon
3. Adjust the following options:
   - Access permissions
   - Default room categories
   - Staging style preferences
   - Notification settings

### Managing Site Content
1. Upload photos using the "Upload" button
2. Create folders to organize different rooms
3. Add project notes and requirements
4. Invite team members using their email addresses

## Best Practices

### Naming Conventions
- Use consistent naming patterns (e.g., "Address - Project Type")
- Include identifying details in the site name
- Avoid special characters in site names

### Organization
- Create separate folders for different rooms
- Use tags to categorize content
- Keep related assets grouped together
- Archive completed projects

### Collaboration
- Assign clear roles to team members
- Use the comment feature for communication
- Set up notification preferences
- Regular progress updates

## Technical Details

### Site Specifications
- Maximum site storage: 50GB
- Supported image formats: JPG, PNG, TIFF
- Maximum image size: 50MB per file
- Maximum team members per site: 25

### Performance Considerations
- Optimize images before upload
- Limit active projects per site
- Regular cleanup of unused assets
- Use bulk operations for efficiency

### Security Features
- Role-based access control
- Encrypted data storage
- Audit logging
- Automatic backup

### API Integration
```json
POST /api/v1/sites
{
  "name": "string",
  "address": "string",
  "propertyType": "string",
  "status": "string",
  "teamMembers": ["string"]
}
```

## Related Documentation
- [Managing Site Access](link-to-access-management)
- [Virtual Staging Guidelines](link-to-staging-guidelines)
- [Team Collaboration](link-to-collaboration-docs)
- [API Reference](link-to-api-docs)

---
**Note:** Site features and limitations may vary based on your subscription plan. Contact support for detailed information about your account capabilities.