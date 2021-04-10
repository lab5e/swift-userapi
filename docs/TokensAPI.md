# TokensAPI

All URIs are relative to *https://api.lab5e.com/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userCreateToken**](TokensAPI.md#usercreatetoken) | **POST** /user/tokens | Create token
[**userDeleteToken**](TokensAPI.md#userdeletetoken) | **DELETE** /user/tokens/{token} | Remove token
[**userListTokens**](TokensAPI.md#userlisttokens) | **GET** /user/tokens | List tokens
[**userRetrieveToken**](TokensAPI.md#userretrievetoken) | **GET** /user/tokens/{token} | Retrieve token
[**userUpdateToken**](TokensAPI.md#userupdatetoken) | **PATCH** /user/tokens/{token} | Update token


# **userCreateToken**
```swift
    open class func userCreateToken(body: Token, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Create token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = Token(resource: "resource_example", write: false, token: "token_example", tags: "TODO", lastUse: "lastUse_example", uses: "uses_example") // Token | 

// Create token
TokensAPI.userCreateToken(body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Token**](Token.md) |  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteToken**
```swift
    open class func userDeleteToken(token: String, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
```

Remove token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | The token to delete.

// Remove token
TokensAPI.userDeleteToken(token: token) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String** | The token to delete. | 

### Return type

**Any**

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userListTokens**
```swift
    open class func userListTokens(completion: @escaping (_ data: TokenList?, _ error: Error?) -> Void)
```

List tokens

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User


// List tokens
TokensAPI.userListTokens() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TokenList**](TokenList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRetrieveToken**
```swift
    open class func userRetrieveToken(token: String, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Retrieve token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | 

// Retrieve token
TokensAPI.userRetrieveToken(token: token) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String** |  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdateToken**
```swift
    open class func userUpdateToken(token: String, body: Token, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Update token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | The token  Use this in the `X-API-Token` header when using the API.
let body = Token(resource: "resource_example", write: false, token: "token_example", tags: "TODO", lastUse: "lastUse_example", uses: "uses_example") // Token | 

// Update token
TokensAPI.userUpdateToken(token: token, body: body) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String** | The token  Use this in the &#x60;X-API-Token&#x60; header when using the API. | 
 **body** | [**Token**](Token.md) |  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

