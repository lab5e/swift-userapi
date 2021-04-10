# Token

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **String** | The resource of the token.  The token applies to the specified resource and any resources below this so the resource &#x60;/&#x60; applies to the root resource and any resource below the root resource. In the same manner &#x60;/collections&#x60; will apply to all collectins while &#x60;/collections/{id}&#x60; will apply to that particular collection. | [optional] 
**write** | **Bool** | Write flag for token.  If this is set to &#x60;true&#x60; the token can be used for write operations in the API such as POST, DELETE and PATCH. | [optional] 
**token** | **String** | Use this in the &#x60;X-API-Token&#x60; header when using the API. | [optional] 
**tags** | **[String: String]** | Tags for the token. | [optional] 
**lastUse** | **String** | The last time the token was used. Time in ms since epoch. | [optional] 
**uses** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


