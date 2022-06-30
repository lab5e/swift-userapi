# TokensAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createToken**](TokensAPI.md#createtoken) | **POST** /user/tokens | Create token
[**deleteToken**](TokensAPI.md#deletetoken) | **DELETE** /user/tokens/{token} | Remove token
[**listTokens**](TokensAPI.md#listtokens) | **GET** /user/tokens | List tokens
[**retrieveToken**](TokensAPI.md#retrievetoken) | **GET** /user/tokens/{token} | Retrieve token
[**updateToken**](TokensAPI.md#updatetoken) | **PATCH** /user/tokens/{token} | Update token


# **createToken**
```swift
    open class func createToken(body: Token, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Create token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = Token(resource: "resource_example", write: false, token: "token_example", tags: "TODO", lastUse: "lastUse_example", uses: "uses_example") // Token | 

// Create token
TokensAPI.createToken(body: body) { (response, error) in
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

# **deleteToken**
```swift
    open class func deleteToken(token: String, completion: @escaping (_ data: DeleteTokenResponse?, _ error: Error?) -> Void)
```

Remove token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | The token to delete.

// Remove token
TokensAPI.deleteToken(token: token) { (response, error) in
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

[**DeleteTokenResponse**](DeleteTokenResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTokens**
```swift
    open class func listTokens(completion: @escaping (_ data: TokenList?, _ error: Error?) -> Void)
```

List tokens

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User


// List tokens
TokensAPI.listTokens() { (response, error) in
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

# **retrieveToken**
```swift
    open class func retrieveToken(token: String, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Retrieve token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | 

// Retrieve token
TokensAPI.retrieveToken(token: token) { (response, error) in
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

# **updateToken**
```swift
    open class func updateToken(token: String, body: AnAPIToken, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Update token

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let token = "token_example" // String | The token  Use this in the `X-API-Token` header when using the API.
let body = An_API_token(resource: "resource_example", write: false, tags: "TODO", lastUse: "lastUse_example", uses: "uses_example") // AnAPIToken | 

// Update token
TokensAPI.updateToken(token: token, body: body) { (response, error) in
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
 **body** | [**AnAPIToken**](AnAPIToken.md) |  | 

### Return type

[**Token**](Token.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

