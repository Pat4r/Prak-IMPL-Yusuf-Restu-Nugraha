private void CheckCustomerIDValid( CustomerInquiryRequest request, int customerIDFieldLength ) 
{     
    if( string.IsNullOrEmpty( request.Customer.CustomerID ) ) 
    {  
        // Check Customer ID length 
        if( request.Customer.CustomerID.Length > customerIDFieldLength ) 
        { 
            throw new BusinessException( 
                HandledErrors.CustomerInvalidLengthMessage ); 
        } 
        // Pad the left of the customer id 
        request.Customer.CustomerID = request.Customer.CustomerID.PadLeft(customerIDFieldLength, Convert.ToChar( "0", CultureInfo.CurrentCulture ) ); 
    } 
} 