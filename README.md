# Swift5 API client for User

API to manage teams, members and tokens

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.3.7 frequent-amara
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://docs.lab5e.com](https://docs.lab5e.com)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.lab5e.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ProfileAPI* | [**getUserProfile**](docs/ProfileAPI.md#getuserprofile) | **GET** /user/profile | Logged in profile
*TeamsAPI* | [**acceptInvite**](docs/TeamsAPI.md#acceptinvite) | **POST** /user/teams/accept | Accept invite
*TeamsAPI* | [**createTeam**](docs/TeamsAPI.md#createteam) | **POST** /user/teams | Create team
*TeamsAPI* | [**deleteInvite**](docs/TeamsAPI.md#deleteinvite) | **DELETE** /user/teams/{teamId}/invites/{code} | Delete invite
*TeamsAPI* | [**deleteMember**](docs/TeamsAPI.md#deletemember) | **DELETE** /user/teams/{teamId}/members/{userId} | Remove member
*TeamsAPI* | [**deleteTeam**](docs/TeamsAPI.md#deleteteam) | **DELETE** /user/teams/{teamId} | Remove team
*TeamsAPI* | [**generateInvite**](docs/TeamsAPI.md#generateinvite) | **POST** /user/teams/{teamId}/invites | Generate invite
*TeamsAPI* | [**listInvites**](docs/TeamsAPI.md#listinvites) | **GET** /user/teams/{teamId}/invites | List invites
*TeamsAPI* | [**listTeams**](docs/TeamsAPI.md#listteams) | **GET** /user/teams | List teams
*TeamsAPI* | [**retrieveInvite**](docs/TeamsAPI.md#retrieveinvite) | **GET** /user/teams/{teamId}/invites/{code} | Retrieve invite
*TeamsAPI* | [**retrieveMember**](docs/TeamsAPI.md#retrievemember) | **GET** /user/teams/{teamId}/members/{userId} | Retrieve member
*TeamsAPI* | [**retrieveTeam**](docs/TeamsAPI.md#retrieveteam) | **GET** /user/teams/{teamId} | Retrieve team
*TeamsAPI* | [**retrieveTeamMembers**](docs/TeamsAPI.md#retrieveteammembers) | **GET** /user/teams/{teamId}/members | List members
*TeamsAPI* | [**updateMember**](docs/TeamsAPI.md#updatemember) | **PATCH** /user/teams/{teamId}/members/{userId} | Update member
*TeamsAPI* | [**updateTeam**](docs/TeamsAPI.md#updateteam) | **PATCH** /user/teams/{teamId} | Update team
*TokensAPI* | [**createToken**](docs/TokensAPI.md#createtoken) | **POST** /user/tokens | Create token
*TokensAPI* | [**deleteToken**](docs/TokensAPI.md#deletetoken) | **DELETE** /user/tokens/{token} | Remove token
*TokensAPI* | [**listTokens**](docs/TokensAPI.md#listtokens) | **GET** /user/tokens | List tokens
*TokensAPI* | [**retrieveToken**](docs/TokensAPI.md#retrievetoken) | **GET** /user/tokens/{token} | Retrieve token
*TokensAPI* | [**updateToken**](docs/TokensAPI.md#updatetoken) | **PATCH** /user/tokens/{token} | Update token


## Documentation For Models

 - [AcceptInviteRequest](docs/AcceptInviteRequest.md)
 - [DeleteInviteResponse](docs/DeleteInviteResponse.md)
 - [DeleteTokenResponse](docs/DeleteTokenResponse.md)
 - [Invite](docs/Invite.md)
 - [InviteList](docs/InviteList.md)
 - [InviteRequest](docs/InviteRequest.md)
 - [Member](docs/Member.md)
 - [MemberList](docs/MemberList.md)
 - [ProtobufAny](docs/ProtobufAny.md)
 - [RpcStatus](docs/RpcStatus.md)
 - [Team](docs/Team.md)
 - [TeamList](docs/TeamList.md)
 - [Token](docs/Token.md)
 - [TokenList](docs/TokenList.md)
 - [UserProfile](docs/UserProfile.md)


## Documentation For Authorization


## APIToken

- **Type**: API key
- **API key parameter name**: X-API-Token
- **Location**: HTTP header


## Author

dev@lab5e.com

