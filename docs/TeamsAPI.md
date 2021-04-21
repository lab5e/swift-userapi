# TeamsAPI

All URIs are relative to *https://api.lab5e.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptInvite**](TeamsAPI.md#acceptinvite) | **POST** /user/teams/accept | Accept invite
[**createTeam**](TeamsAPI.md#createteam) | **POST** /user/teams | Create team
[**deleteInvite**](TeamsAPI.md#deleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
[**deleteMember**](TeamsAPI.md#deletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
[**deleteTeam**](TeamsAPI.md#deleteteam) | **DELETE** /user/teams/{teamId} | Remove team
[**generateInvite**](TeamsAPI.md#generateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
[**listInvites**](TeamsAPI.md#listinvites) | **GET** /user/teams/{teamId}/invites | List invites
[**listTeams**](TeamsAPI.md#listteams) | **GET** /user/teams | List teams
[**retrieveInvite**](TeamsAPI.md#retrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
[**retrieveMember**](TeamsAPI.md#retrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
[**retrieveTeam**](TeamsAPI.md#retrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
[**retrieveTeamMembers**](TeamsAPI.md#retrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
[**updateMember**](TeamsAPI.md#updatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
[**updateTeam**](TeamsAPI.md#updateteam) | **PATCH** /user/teams/{teamId} | Update team


# **acceptInvite**
```swift
    open class func acceptInvite(body: AcceptInviteRequest, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Accept invite

Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = AcceptInviteRequest(code: "code_example") // AcceptInviteRequest | 

// Accept invite
TeamsAPI.acceptInvite(body: body) { (response, error) in
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
 **body** | [**AcceptInviteRequest**](AcceptInviteRequest.md) |  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTeam**
```swift
    open class func createTeam(body: Team, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Create team

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = Team(teamId: "teamId_example", isPrivate: false, tags: "TODO", members: [Member(teamId: "teamId_example", role: "role_example", userId: "userId_example", user: UserProfile(userId: "userId_example", email: "email_example", avatarUrl: "avatarUrl_example", name: "name_example", profileUrl: "profileUrl_example", githubLogin: "githubLogin_example", provider: "provider_example", logoutUrl: "logoutUrl_example"))]) // Team | 

// Create team
TeamsAPI.createTeam(body: body) { (response, error) in
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
 **body** | [**Team**](Team.md) |  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
```swift
    open class func deleteInvite(teamId: String, code: String, completion: @escaping (_ data: DeleteInviteResponse?, _ error: Error?) -> Void)
```

Delete invite

Delete an invite created earlier. You must be an administrator of the team to perform this action

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let code = "code_example" // String | The invite code.

// Delete invite
TeamsAPI.deleteInvite(teamId: teamId, code: code) { (response, error) in
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
 **teamId** | **String** | The team ID | 
 **code** | **String** | The invite code. | 

### Return type

[**DeleteInviteResponse**](DeleteInviteResponse.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMember**
```swift
    open class func deleteMember(teamId: String, userId: String, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
```

Remove member

Remove a member from the team. You must be an administrator to do this. You can't remove yourself from the team.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let userId = "userId_example" // String | The user ID

// Remove member
TeamsAPI.deleteMember(teamId: teamId, userId: userId) { (response, error) in
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
 **teamId** | **String** | The team ID | 
 **userId** | **String** | The user ID | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTeam**
```swift
    open class func deleteTeam(teamId: String, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Remove team

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// Remove team
TeamsAPI.deleteTeam(teamId: teamId) { (response, error) in
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
 **teamId** | **String** | The team ID | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateInvite**
```swift
    open class func generateInvite(teamId: String, body: InviteRequest, completion: @escaping (_ data: Invite?, _ error: Error?) -> Void)
```

Generate invite

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let body = InviteRequest(teamId: "teamId_example", code: "code_example") // InviteRequest | 

// Generate invite
TeamsAPI.generateInvite(teamId: teamId, body: body) { (response, error) in
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
 **teamId** | **String** | The team ID | 
 **body** | [**InviteRequest**](InviteRequest.md) |  | 

### Return type

[**Invite**](Invite.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInvites**
```swift
    open class func listInvites(teamId: String, completion: @escaping (_ data: InviteList?, _ error: Error?) -> Void)
```

List invites

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// List invites
TeamsAPI.listInvites(teamId: teamId) { (response, error) in
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
 **teamId** | **String** | The team ID | 

### Return type

[**InviteList**](InviteList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTeams**
```swift
    open class func listTeams(completion: @escaping (_ data: TeamList?, _ error: Error?) -> Void)
```

List teams

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User


// List teams
TeamsAPI.listTeams() { (response, error) in
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

[**TeamList**](TeamList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveInvite**
```swift
    open class func retrieveInvite(teamId: String, code: String, completion: @escaping (_ data: Invite?, _ error: Error?) -> Void)
```

Retrieve invite

Read a single invite from the team's set of non-redeemed invites.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let code = "code_example" // String | The invite code.

// Retrieve invite
TeamsAPI.retrieveInvite(teamId: teamId, code: code) { (response, error) in
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
 **teamId** | **String** | The team ID | 
 **code** | **String** | The invite code. | 

### Return type

[**Invite**](Invite.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveMember**
```swift
    open class func retrieveMember(teamId: String, userId: String, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
```

Retrieve member

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let userId = "userId_example" // String | The user ID

// Retrieve member
TeamsAPI.retrieveMember(teamId: teamId, userId: userId) { (response, error) in
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
 **teamId** | **String** | The team ID | 
 **userId** | **String** | The user ID | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTeam**
```swift
    open class func retrieveTeam(teamId: String, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Retrieve team

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// Retrieve team
TeamsAPI.retrieveTeam(teamId: teamId) { (response, error) in
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
 **teamId** | **String** | The team ID | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieveTeamMembers**
```swift
    open class func retrieveTeamMembers(teamId: String, completion: @escaping (_ data: MemberList?, _ error: Error?) -> Void)
```

List members

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// List members
TeamsAPI.retrieveTeamMembers(teamId: teamId) { (response, error) in
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
 **teamId** | **String** | The team ID | 

### Return type

[**MemberList**](MemberList.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMember**
```swift
    open class func updateMember(teamId: String, userId: String, body: Member, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
```

Update member

You must be an administrator of the team to update member settings

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | 
let userId = "userId_example" // String | 
let body = Member(teamId: "teamId_example", role: "role_example", userId: "userId_example", user: UserProfile(userId: "userId_example", email: "email_example", avatarUrl: "avatarUrl_example", name: "name_example", profileUrl: "profileUrl_example", githubLogin: "githubLogin_example", provider: "provider_example", logoutUrl: "logoutUrl_example")) // Member | 

// Update member
TeamsAPI.updateMember(teamId: teamId, userId: userId, body: body) { (response, error) in
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
 **teamId** | **String** |  | 
 **userId** | **String** |  | 
 **body** | [**Member**](Member.md) |  | 

### Return type

[**Member**](Member.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTeam**
```swift
    open class func updateTeam(teamId: String, body: Team, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Update team

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | 
let body = Team(teamId: "teamId_example", isPrivate: false, tags: "TODO", members: [Member(teamId: "teamId_example", role: "role_example", userId: "userId_example", user: UserProfile(userId: "userId_example", email: "email_example", avatarUrl: "avatarUrl_example", name: "name_example", profileUrl: "profileUrl_example", githubLogin: "githubLogin_example", provider: "provider_example", logoutUrl: "logoutUrl_example"))]) // Team | 

// Update team
TeamsAPI.updateTeam(teamId: teamId, body: body) { (response, error) in
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
 **teamId** | **String** |  | 
 **body** | [**Team**](Team.md) |  | 

### Return type

[**Team**](Team.md)

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

