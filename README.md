# FBR Invoice Submission API - Postman Collection

This Postman collection allows you to submit invoices to the Federal Board of Revenue (FBR) API.

## Setup Instructions

### 1. Import Collection and Environment

1. Open Postman
2. Click **Import** button
3. Import both files:
   - `FBR_Invoice_Collection.postman_collection.json`
   - `FBR_Environment.postman_environment.json`
4. Select the **FBR API Environment** from the environment dropdown (top right)

### 2. Configure Environment Variables

Update the following variables in your environment:

- **fbr_base_url**: FBR API base URL (default: `https://api.fbr.gov.pk`)
- **client_id**: Your FBR API client ID
- **client_secret**: Your FBR API client secret
- **seller_name**: Your company name
- **seller_ntn**: Your National Tax Number (NTN)
- **seller_strn**: Your Sales Tax Registration Number (STRN)

### 3. Authentication

Before submitting invoices, you need to authenticate:

1. Open the **Authentication** folder
2. Run **Get Access Token** request
3. The access token will be automatically saved to the environment variable `access_token`

## Available Requests

### Authentication

- **Get Access Token**: Obtains OAuth token for API authentication

### Invoice Submission

- **Submit Single Invoice**: Submits one invoice to FBR
- **Submit Bulk Invoices**: Submits multiple invoices in a single request
- **Get Invoice Status**: Checks the status of a previously submitted invoice
- **List Invoices**: Retrieves a list of invoices with pagination and date filters

## Usage Examples

### Submitting a Single Invoice

1. Ensure you have a valid access token (run "Get Access Token" first)
2. Update invoice details in the **Submit Single Invoice** request body
3. Send the request

### Invoice Data Structure

```json
{
    "invoice_number": "INV-001",
    "invoice_date": "2024-01-15T10:30:00Z",
    "seller_name": "Your Company",
    "seller_ntn": "1234567-8",
    "seller_strn": "1234567890123",
    "buyer_name": "Buyer Company",
    "buyer_ntn": "7654321-2",
    "items": [
        {
            "item_code": "ITEM001",
            "item_name": "Product Name",
            "quantity": 10,
            "unit_price": 100.00,
            "total_price": 1000.00,
            "sales_tax": 160.00
        }
    ],
    "sub_total": 1000.00,
    "sales_tax_total": 160.00,
    "grand_total": 1160.00,
    "currency": "PKR"
}
```

## Notes

- The access token is automatically captured and stored after successful authentication
- Invoice IDs are automatically saved after successful submission for status checking
- All requests use Bearer token authentication (OAuth 2.0)
- Update the API endpoints in the collection if your FBR API uses different URLs

## Troubleshooting

1. **401 Unauthorized**: Ensure you have a valid access token and it hasn't expired
2. **400 Bad Request**: Check your invoice data format matches FBR requirements
3. **404 Not Found**: Verify the API endpoint URLs are correct in your environment

## Important Security Notes

- Never commit your `client_secret` or `access_token` to version control
- Keep your environment variables secure
- Use different environments for development and production

## API Documentation

For detailed FBR API documentation, refer to:
- Official FBR API Documentation
- FBR Developer Portal (if available)

## Support

For issues or questions:
- Check FBR API documentation
- Contact FBR technical support
- Review request/response examples in Postman console