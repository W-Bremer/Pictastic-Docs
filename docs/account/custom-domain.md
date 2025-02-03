# Custom Domain Configuration

## Feature Overview
Custom domain functionality allows you to brand your Pictastic.ai galleries and virtual staging presentations with your own domain name (e.g., `gallery.yourcompany.com` instead of `gallery.pictastic.ai`). This feature is available for Professional and Enterprise plan subscribers.

## Key Functionality
- Set up custom subdomains for property galleries
- Configure DNS settings
- SSL certificate management
- Automatic HTTPS enforcement
- White-labeled presentation URLs

## Usage Instructions

### 1. Domain Setup
1. Navigate to **Account Settings** > **Custom Domain**
2. Click "Add Custom Domain"
3. Enter your desired subdomain (e.g., `gallery.yourcompany.com`)
4. Click "Verify Domain"

### 2. DNS Configuration
Add the following DNS records to your domain provider's settings:

```
Type: CNAME
Host: gallery
Value: custom.pictastic.ai
TTL: 3600 (or automatic)
```

### 3. Verification
1. After adding DNS records, return to Pictastic.ai
2. Click "Verify DNS Settings"
3. Wait for verification (may take up to 24 hours)

### 4. SSL Certificate
- SSL certificate is automatically provisioned
- Allow up to 1 hour for SSL certificate generation
- Certificate auto-renews 30 days before expiration

## Best Practices

1. **Domain Selection**
   - Use a memorable subdomain
   - Avoid using numbers or special characters
   - Keep the subdomain short and professional

2. **DNS Management**
   - Document your DNS changes
   - Use recommended TTL values
   - Maintain backup of previous DNS settings

3. **Testing**
   - Verify SSL certificate status
   - Test gallery links after setup
   - Check mobile compatibility

4. **Monitoring**
   - Regular SSL certificate checks
   - Monitor domain status
   - Set up alerts for domain expiration

## Technical Details

### DNS Requirements
- CNAME record pointing to `custom.pictastic.ai`
- Support for HTTPS/SSL
- Compatible with major DNS providers

### SSL Specifications
- 2048-bit SSL certificates
- Auto-renewal enabled
- Valid for 12 months
- Compliant with modern security standards

### Limitations
- Maximum 5 custom domains per account (Professional plan)
- Unlimited domains for Enterprise plans
- Subdomain length: 3-63 characters
- DNS propagation: up to 24 hours

### Error Codes
```
ERROR_CODE_1001: Invalid domain format
ERROR_CODE_1002: DNS verification failed
ERROR_CODE_1003: SSL generation failed
ERROR_CODE_1004: Domain limit exceeded
```

### API Integration
Custom domains can be managed via API:
```http
POST /api/v1/custom-domains
GET /api/v1/custom-domains
DELETE /api/v1/custom-domains/{domain_id}
```

## Support
For assistance with custom domain setup:
- Email: support@pictastic.ai
- Support hours: Monday-Friday, 9 AM - 5 PM EST
- Priority support for Enterprise customers

---
*Note: Custom domain feature requires an active Professional or Enterprise subscription. Domain and SSL certificate management is included in the subscription fee.*