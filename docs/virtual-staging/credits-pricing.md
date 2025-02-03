# Virtual Staging Credits & Pricing Documentation

## Feature Overview
The Virtual Staging Credits system allows users to purchase and manage credits for virtual staging services within Pictastic.ai. Credits are the platform's currency for processing virtual staging requests, with different staging types requiring varying amounts of credits.

## Key Functionality
- Credit purchase and management
- Real-time credit balance tracking
- Automated credit deduction for staging services
- Bulk credit purchasing options
- Credit usage history and reporting
- Enterprise credit pool management

## Usage Instructions

### Purchasing Credits
1. Navigate to the Credits & Pricing section
2. Select a credit package:
   - Starter (100 credits): $199
   - Professional (500 credits): $899
   - Enterprise (1000+ credits): Custom pricing
3. Complete payment through secure checkout
4. Credits are instantly added to your account

### Checking Credit Balance
1. Log into your Pictastic.ai account
2. View current balance in the top navigation bar
3. Access detailed credit history in Account Settings > Credits

### Credit Costs Per Service
| Service Type | Credits Required |
|--------------|-----------------|
| Basic Room Staging | 2 credits |
| Advanced Staging | 3 credits |
| Style Change | 2 credits |
| Furniture Removal | 1 credit |
| Outdoor Staging | 3 credits |

## Best Practices

### Credit Management
- Monitor credit balance regularly
- Set up low-balance alerts (minimum 20 credits recommended)
- Purchase credits in bulk for better pricing
- Review credit usage reports monthly

### Enterprise Users
- Assign credit pool administrators
- Set up department-specific credit allocations
- Enable credit usage notifications
- Implement approval workflows for large credit purchases

## Technical Details

### API Endpoints
```
GET /api/v1/credits/balance
POST /api/v1/credits/purchase
GET /api/v1/credits/history
```

### Credit System Architecture
- Real-time credit tracking system
- Automatic credit deduction upon service completion
- Failed staging attempts do not consume credits
- Credit expiration: 12 months from purchase date

### Security
- SSL encryption for all transactions
- Two-factor authentication for large credit purchases
- Audit trail for all credit-related activities

### Enterprise Integration
```json
{
  "enterprise_features": {
    "sso_support": true,
    "credit_pool_management": true,
    "usage_reporting": true,
    "api_access": true
  }
}
```

### Rate Limits
- Maximum 10,000 credits per single purchase
- Maximum 100 simultaneous staging requests
- Credit balance updates within 30 seconds of transaction

For additional support or custom enterprise solutions, contact support@pictastic.ai