private void ValidateRequest(CustomerInquiryRequest request, int customerFieldLength, int productFieldLength) { 
    // 1. Check both parameters are not null and not empty strings 
    CheckCustomerInquiryNotNullOrEmpty( request ); 
    // 2. Check both parameters aren't populated 
    CheckCustomerInquiryNullOrEmpty( request ); 
    // 3. Check CustomerID for field length and pad the parameter 
    CheckCustomerIDValid( request, customerFieldLength ); 
    // 4. Check ProductNumber for field length and pad the parameter 
    CheckProductNumberValid( request, productFieldLength ); 
}