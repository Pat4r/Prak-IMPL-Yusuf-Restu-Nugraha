private void CheckCustomerInquiryNullOrEmpty( 
    CustomerInquiryRequest request ) 
    { 
        if( string.IsNullOrEmpty( request.Customer.CustomerID ) && 
        string.IsNullOrEmpty( request.CustomerProduct.ProductNumber ) ) 
        { 
            // Both are null or empty string 
            throw new BusinessException( 
                HandledErrors.CustomerEmptyMessage ); 
            } 
}