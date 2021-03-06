//
// Member.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Member: Codable {

    public var teamId: String?
    public var role: String?
    public var userId: String?
    public var user: UserProfile?

    public init(teamId: String? = nil, role: String? = nil, userId: String? = nil, user: UserProfile? = nil) {
        self.teamId = teamId
        self.role = role
        self.userId = userId
        self.user = user
    }

}
