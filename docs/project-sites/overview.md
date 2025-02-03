# Project Sites Overview

## Feature Overview
Project Sites are dedicated workspaces within Pictastic.ai that allow real estate professionals to organize, manage, and share media assets for specific properties. Each project site functions as a centralized hub for property photos, virtual staging, floor plans, and marketing materials.

## Key Functionality
- **Media Organization**: Sort and categorize property photos, virtual stagings, and marketing assets
- **Collaboration Tools**: Share access with team members, clients, and stakeholders
- **Version Control**: Track changes and maintain multiple versions of staged photos
- **Access Management**: Control viewing and editing permissions for different user roles
- **Automated Organization**: Smart folders and AI-powered photo categorization
- **Direct Sharing**: Generate shareable links for individual assets or entire projects

## Usage Instructions

### Creating a New Project Site
1. Navigate to the Dashboard
2. Click "Create New Project" button
3. Enter project details:
   - Project name
   - Property address
   - Project type (Residential/Commercial)
   - Client information
4. Click "Create" to generate the project site

### Managing Media
1. **Upload Files**
   - Drag and drop files into the project area
   - Use the "Upload" button to select files
   - Bulk upload via ZIP files

2. **Organize Content**
   - Create custom folders
   - Use smart folders for automatic categorization
   - Add tags and labels for easy searching

3. **Share Access**
   - Click "Share" button
   - Enter email addresses of team members
   - Set permission levels (View/Edit/Admin)
   - Generate shareable links with expiration dates

## Best Practices

### Organization
- Create consistent folder structures across projects
- Use descriptive file names (e.g., "master-bedroom-staged-v1")
- Apply relevant tags for efficient searching
- Archive completed projects instead of deleting them

### Collaboration
- Assign clear roles and permissions to team members
- Use the commenting feature for feedback
- Set up notification preferences for important updates
- Regular cleanup of unused assets

### Security
- Review access permissions regularly
- Use expiring links for external sharing
- Enable two-factor authentication
- Log out from shared devices

## Technical Details

### Storage Limits
- Standard plan: 50GB per project
- Professional plan: 250GB per project
- Enterprise plan: Unlimited storage

### Supported File Types
- Images: JPG, PNG, TIFF, RAW
- Documents: PDF, DOC, DOCX
- Videos: MP4, MOV (up to 2GB per file)

### System Requirements
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Minimum 10Mbps internet connection
- Display resolution: 1920x1080 or higher

### API Integration
```javascript
// Example API endpoint for project creation
POST /api/v1/projects
{
  "name": "123 Main Street",
  "type": "residential",
  "client_id": "client_12345",
  "address": {
    "street": "123 Main Street",
    "city": "Springfield",
    "state": "IL",
    "zip": "62701"
  }
}
```

### Performance Optimization
- Automatic image compression
- Progressive loading for large galleries
- CDN distribution for faster access
- Background processing for bulk operations

---

For additional support or feature requests, contact our technical support team at support@pictastic.ai or visit our help center at help.pictastic.ai.