# System Trash Documentation

## Feature Overview
The System Trash feature in Pictastic.ai serves as a temporary storage location for deleted items, allowing users to recover accidentally deleted content or permanently remove items from the system. Items in trash are retained for 30 days before automatic permanent deletion.

## Key Functionality
- Temporary storage of deleted items (photos, virtual stagings, floor plans)
- Item recovery within 30-day retention period
- Bulk restore and permanent delete options
- Storage space management
- Automatic cleanup of expired items

## Usage Instructions

### Accessing Trash
1. Navigate to System Settings in the main menu
2. Select "Trash" from the submenu
3. View all deleted items sorted by deletion date

### Restoring Items
1. Select items you want to restore by checking the boxes
2. Click "Restore Selected" button
3. Choose destination folder (original location by default)
4. Confirm restoration

### Permanent Deletion
1. Select items to delete
2. Click "Delete Permanently" button
3. Confirm deletion in the warning dialog

### Bulk Actions
- Use "Select All" to manage multiple items
- Filter items by type, date, or project
- Sort by size, date, or file name

## Best Practices

### Storage Management
- Regularly review trash contents
- Empty trash when storage space is limited
- Restore important items promptly

### Organization
- Use filters to locate specific items
- Check item details before permanent deletion
- Consider downloading important items before deletion

### Security
- Only system administrators can access other users' deleted items
- Regular users can only see their own deleted content
- Enable notifications for automatic deletions

## Technical Details

### Storage Specifications
- Maximum trash retention: 30 days
- Storage limit: 20% of total account storage
- File size limit: Same as original upload limits

### File Types Supported
- Images (.jpg, .png, .tiff)
- Documents (.pdf)
- Project files (.pst)
- Virtual staging files (.vs)

### System Requirements
- Minimum 10GB free storage space
- Supported browsers: Chrome 80+, Firefox 75+, Safari 13+
- Internet connection: 5Mbps minimum

### API Endpoints
```
GET /api/v1/trash
POST /api/v1/trash/restore
DELETE /api/v1/trash/permanent
GET /api/v1/trash/status
```

### Error Handling
- Insufficient storage space
- File permission conflicts
- Corrupted file recovery
- Network timeout handling

### Automatic Cleanup
- Daily cleanup job runs at 00:00 UTC
- Removes items older than 30 days
- Generates system logs for deleted items
- Sends notification to account admin

For additional support or technical assistance, contact Pictastic.ai support team at support@pictastic.ai.