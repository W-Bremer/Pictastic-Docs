# Creating Albums in Pictastic.ai

## Feature Overview
Albums in Pictastic.ai allow real estate professionals to organize, manage, and share collections of property images. Albums serve as containers for both original and virtually staged photos, making it easy to keep property listings organized and accessible.

## Key Functionality
- Create unlimited albums for different properties
- Custom naming and organization
- Batch upload capabilities (up to 50 images per upload)
- Share albums with clients and team members
- Track image modifications and staging history
- Sort and filter images within albums
- Set album privacy settings

## Usage Instructions

### Creating a New Album
1. Navigate to the Albums section in your dashboard
2. Click the "+ New Album" button
3. Enter the album name (e.g., "123 Main Street")
4. Select privacy settings (Private/Team/Public)
5. Click "Create"

### Adding Images to an Album
1. Open the desired album
2. Click "Upload Images" or drag and drop files
3. Select images from your computer (supported formats: JPG, PNG, HEIC)
4. Wait for upload completion
5. Images will automatically be processed for optimization

### Managing Album Settings
1. Click the gear icon within the album
2. Modify album properties:
   - Name
   - Description
   - Privacy settings
   - Collaboration permissions
3. Save changes

## Best Practices
- **Naming Convention**: Use consistent naming (e.g., "Address - Date" or "ProjectID - PropertyName")
- **Organization**: Create separate albums for:
  - Different properties
  - Before/after staging comparisons
  - Client-specific collections
- **Image Management**:
  - Upload high-resolution images (minimum 1920x1080)
  - Keep original photos in a separate subfolder
  - Tag images appropriately for easy searching

## Technical Details

### Storage Limits
- Individual album capacity: 500 images
- Maximum image size: 25MB per file
- Total storage varies by subscription plan

### Supported File Formats
- Images: JPG, PNG, HEIC, TIFF
- Maximum dimensions: 8000x8000 pixels
- Minimum dimensions: 800x600 pixels

### System Requirements
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Minimum internet speed: 5Mbps upload
- Recommended: 10Mbps+ for optimal performance

### API Integration
```json
POST /api/v1/albums
{
  "name": "string",
  "description": "string",
  "privacy": "private|team|public",
  "settings": {
    "allowComments": boolean,
    "enableVersioning": boolean
  }
}
```

### Error Handling
- Automatic retry for failed uploads
- Notification system for upload status
- Error logs available in album settings

For additional support or technical queries, contact our support team at support@pictastic.ai.