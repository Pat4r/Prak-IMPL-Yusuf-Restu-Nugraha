private void CheckCustomerInquiryNotNullOrEmpty(CustomerInquiryRequest request) { 
    // Check both parameters are not null or empty string 
    if( !string.IsNullOrEmpty( request.CustomerProduct.ProductNumber ) && !string.IsNullOrEmpty( request.Customer.CustomerID ) ) { 
        // Both were populated 
        throw new BusinessException( 
            HandledErrors.InvalidBothParameterMessage ); 
    } 
}