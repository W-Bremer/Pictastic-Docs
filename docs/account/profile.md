# Account & Profile Documentation

## Feature Overview
The Account/Profile section in Pictastic.ai allows users to manage their personal information, subscription settings, and platform preferences. This central hub enables real estate professionals to maintain their business identity and customize their experience within the platform.

## Key Functionality
- Profile information management
- Subscription and billing controls
- API key management
- Team member access settings
- Notification preferences
- Usage statistics and history
- Brand customization options

## Usage Instructions

### Accessing Your Profile
1. Click the profile icon in the top-right corner
2. Select "Account Settings" from the dropdown menu

### Managing Profile Information
```markdown
Profile > Personal Information
- Update name, email, and contact details
- Change profile picture
- Modify company information
- Set timezone and language preferences
```

### Subscription Management
```markdown
Profile > Subscription
- View current plan
- Upgrade/downgrade subscription
- Update billing information
- Download invoices
- View usage metrics
```

### Security Settings
```markdown
Profile > Security
- Change password
- Enable/disable two-factor authentication
- Manage active sessions
- View login history
```

### Team Access Control
```markdown
Profile > Team
- Invite team members
- Set role permissions
- Manage access levels
- Remove team members
```

## Best Practices

### Profile Setup
- Use a professional profile photo
- Provide complete business information
- Keep contact details current
- Enable two-factor authentication

### Team Management
- Regularly review team member access
- Assign appropriate permission levels
- Remove inactive users promptly
- Document role assignments

### Security
- Change passwords every 90 days
- Use strong passwords (min. 12 characters)
- Review login history monthly
- Keep API keys secure

## Technical Details

### API Access
```json
Endpoint: api.pictastic.ai/v1/profile
Methods: GET, PUT, PATCH
Authentication: Bearer token required
```

### Data Storage
- Profile data: encrypted at rest
- Passwords: hashed using bcrypt
- Files: stored in AWS S3
- Session timeout: 24 hours

### Rate Limits
```markdown
API Requests:
- Free tier: 1000 requests/day
- Professional: 10000 requests/day
- Enterprise: Unlimited
```

### Supported Formats
- Profile images: JPG, PNG (max 5MB)
- Documents: PDF (max 10MB)
- Data export: JSON, CSV

### Integration Options
```markdown
- REST API
- Webhook notifications
- SSO (Enterprise only)
- OAuth 2.0 authentication
```

## Troubleshooting

### Common Issues
1. **Profile changes not saving**
   - Clear browser cache
   - Check internet connection
   - Verify form validation

2. **Team invite failures**
   - Confirm email accuracy
   - Check license limitations
   - Verify domain restrictions

3. **API key issues**
   - Regenerate key
   - Check rate limits
   - Verify permissions

### Support Channels
- Email: support@pictastic.ai
- Help Center: help.pictastic.ai
- Live Chat: Available 9am-5pm EST
- Phone: +1 (555) 123-4567

For additional assistance or feature requests, contact our support team or visit our help center.