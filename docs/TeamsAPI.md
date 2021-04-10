# TeamsAPI

All URIs are relative to *https://api.lab5e.com/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAcceptInvite**](TeamsAPI.md#useracceptinvite) | **POST** /user/teams/accept | Accept invite
[**userCreateTeam**](TeamsAPI.md#usercreateteam) | **POST** /user/teams | Create team
[**userDeleteInvite**](TeamsAPI.md#userdeleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
[**userDeleteMember**](TeamsAPI.md#userdeletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
[**userDeleteTeam**](TeamsAPI.md#userdeleteteam) | **DELETE** /user/teams/{teamId} | Remove team
[**userGenerateInvite**](TeamsAPI.md#usergenerateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
[**userListInvites**](TeamsAPI.md#userlistinvites) | **GET** /user/teams/{teamId}/invites | List invites
[**userListTeams**](TeamsAPI.md#userlistteams) | **GET** /user/teams | List teams
[**userRetrieveInvite**](TeamsAPI.md#userretrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
[**userRetrieveMember**](TeamsAPI.md#userretrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
[**userRetrieveTeam**](TeamsAPI.md#userretrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
[**userRetrieveTeamMembers**](TeamsAPI.md#userretrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
[**userUpdateMember**](TeamsAPI.md#userupdatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
[**userUpdateTeam**](TeamsAPI.md#userupdateteam) | **PATCH** /user/teams/{teamId} | Update team


# **userAcceptInvite**
```swift
    open class func userAcceptInvite(body: AcceptInviteRequest, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Accept invite

Accept an invite from another user. This will add the currently logged in user to the team as a regular memeber. When the invite is accepted it is removed from the team's invites and cannot be reused.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = AcceptInviteRequest(code: "code_example") // AcceptInviteRequest | 

// Accept invite
TeamsAPI.userAcceptInvite(body: body) { (response, error) in
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

# **userCreateTeam**
```swift
    open class func userCreateTeam(body: Team, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Create team

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let body = Team(teamId: "teamId_example", isPrivate: false, tags: "TODO", members: [Member(teamId: "teamId_example", role: "role_example", userId: "userId_example", user: UserProfile(userId: "userId_example", email: "email_example", avatarUrl: "avatarUrl_example", name: "name_example", profileUrl: "profileUrl_example", githubLogin: "githubLogin_example", provider: "provider_example", logoutUrl: "logoutUrl_example"))]) // Team | 

// Create team
TeamsAPI.userCreateTeam(body: body) { (response, error) in
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

# **userDeleteInvite**
```swift
    open class func userDeleteInvite(teamId: String, code: String, completion: @escaping (_ data: Any?, _ error: Error?) -> Void)
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
TeamsAPI.userDeleteInvite(teamId: teamId, code: code) { (response, error) in
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

**Any**

### Authorization

[APIToken](../README.md#APIToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeleteMember**
```swift
    open class func userDeleteMember(teamId: String, userId: String, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
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
TeamsAPI.userDeleteMember(teamId: teamId, userId: userId) { (response, error) in
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

# **userDeleteTeam**
```swift
    open class func userDeleteTeam(teamId: String, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Remove team

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// Remove team
TeamsAPI.userDeleteTeam(teamId: teamId) { (response, error) in
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

# **userGenerateInvite**
```swift
    open class func userGenerateInvite(teamId: String, body: InviteRequest, completion: @escaping (_ data: Invite?, _ error: Error?) -> Void)
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
TeamsAPI.userGenerateInvite(teamId: teamId, body: body) { (response, error) in
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

# **userListInvites**
```swift
    open class func userListInvites(teamId: String, completion: @escaping (_ data: InviteList?, _ error: Error?) -> Void)
```

List invites

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// List invites
TeamsAPI.userListInvites(teamId: teamId) { (response, error) in
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

# **userListTeams**
```swift
    open class func userListTeams(completion: @escaping (_ data: TeamList?, _ error: Error?) -> Void)
```

List teams

Update the team. You must be an administrator of the team to edit it.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User


// List teams
TeamsAPI.userListTeams() { (response, error) in
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

# **userRetrieveInvite**
```swift
    open class func userRetrieveInvite(teamId: String, code: String, completion: @escaping (_ data: Invite?, _ error: Error?) -> Void)
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
TeamsAPI.userRetrieveInvite(teamId: teamId, code: code) { (response, error) in
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

# **userRetrieveMember**
```swift
    open class func userRetrieveMember(teamId: String, userId: String, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
```

Retrieve member

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID
let userId = "userId_example" // String | The user ID

// Retrieve member
TeamsAPI.userRetrieveMember(teamId: teamId, userId: userId) { (response, error) in
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

# **userRetrieveTeam**
```swift
    open class func userRetrieveTeam(teamId: String, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
```

Retrieve team

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// Retrieve team
TeamsAPI.userRetrieveTeam(teamId: teamId) { (response, error) in
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

# **userRetrieveTeamMembers**
```swift
    open class func userRetrieveTeamMembers(teamId: String, completion: @escaping (_ data: MemberList?, _ error: Error?) -> Void)
```

List members

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import User

let teamId = "teamId_example" // String | The team ID

// List members
TeamsAPI.userRetrieveTeamMembers(teamId: teamId) { (response, error) in
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

# **userUpdateMember**
```swift
    open class func userUpdateMember(teamId: String, userId: String, body: Member, completion: @escaping (_ data: Member?, _ error: Error?) -> Void)
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
TeamsAPI.userUpdateMember(teamId: teamId, userId: userId, body: body) { (response, error) in
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

# **userUpdateTeam**
```swift
    open class func userUpdateTeam(teamId: String, body: Team, completion: @escaping (_ data: Team?, _ error: Error?) -> Void)
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
TeamsAPI.userUpdateTeam(teamId: teamId, body: body) { (response, error) in
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

