private void CheckProductNumberValid( CustomerInquiryRequest request, int productFieldLength ) 
{     
    if( string.IsNullOrEmpty( request.CustomerProduct.ProductNumber ) ) 
    {  
        // Check Product Length 
        if( request.CustomerProduct.ProductNumber.Length > productFieldLength ) 
        { 
            throw new BusinessException(  
                HandledErrors.ProductInvalidLengthMessage ); 
        } 
        // Pad the left of the product number 
        request.CustomerProduct.ProductNumber = request.CustomerProduct.ProductNumber.PadLeft(productFieldLength,Convert.ToChar( "0", CultureInfo.CurrentCulture ) ); 
    } 
} 