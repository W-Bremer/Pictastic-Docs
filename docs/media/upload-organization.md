# Media Upload & Organization Documentation

## 1. Feature Overview
The Media Upload & Organization system in Pictastic.ai enables users to efficiently upload, manage, and organize real estate media assets. This feature supports batch uploads, automatic categorization, and hierarchical organization of photos, virtual stagings, and floor plans.

## 2. Key Functionality
- **Bulk Upload Support**: Upload up to 100 images simultaneously
- **Auto-categorization**: AI-powered detection of room types and image categories
- **Organization Structure**: Projects > Properties > Room Categories
- **Format Support**: JPG, PNG, TIFF (up to 25MB per file)
- **Drag-and-drop Interface**: Intuitive media management
- **Smart Tagging**: Automatic and manual tagging capabilities
- **Version Control**: Track changes and maintain multiple versions

## 3. Usage Instructions

### Uploading Media
1. Navigate to the Media Library
2. Select "Upload" or drag files into the upload zone
3. Choose upload options:
   - Single property or batch upload
   - Auto-categorization preference
   - Initial tags

### Organizing Media
1. Create or select a property folder
2. Use the "Organize" tool to:
   - Create room categories
   - Set display order
   - Apply batch actions
3. Assign media to categories through drag-and-drop

### Managing Assets
1. Select media items
2. Use the toolbar to:
   - Edit metadata
   - Apply tags
   - Move/copy to other folders
   - Download or share

## 4. Best Practices

### File Management
- Use consistent naming conventions
- Create property folders before uploading
- Regular cleanup of unused assets
- Maintain backup copies locally

### Organization
- Utilize room categories consistently
- Apply relevant tags immediately
- Group similar items together
- Use description fields for important details

### Performance
- Compress images before upload when possible
- Limit batch uploads to 50 files for optimal performance
- Clear browser cache regularly
- Use wired internet connection for large uploads

## 5. Technical Details

### File Specifications
```
Maximum file size: 25MB
Supported formats: JPG, PNG, TIFF
Recommended resolution: 3000x2000px minimum
Color space: sRGB
```

### API Endpoints
```
POST /api/v1/media/upload
GET /api/v1/media/list
PUT /api/v1/media/organize
DELETE /api/v1/media/{id}
```

### Storage Structure
```
├── properties/
│   ├── property_id/
│   │   ├── interior/
│   │   ├── exterior/
│   │   └── floor_plans/
└── staging/
    ├── completed/
    └── in_progress/
```

### Error Handling
- Automatic retry for failed uploads (3 attempts)
- Validation errors displayed in-app
- Progress tracking for large uploads
- Timeout after 5 minutes of inactivity

### Security
- Encrypted file transfer (TLS 1.3)
- Access control based on user roles
- Virus scanning on upload
- Automatic backup to cloud storage

## Related Resources
- [API Documentation](link)
- [Troubleshooting Guide](link)
- [Storage Management](link)
- [User Permissions](link)

---
*Note: For additional support or feature requests, contact technical support through the help desk portal.*