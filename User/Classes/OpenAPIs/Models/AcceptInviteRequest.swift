//
// AcceptInviteRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AcceptInviteRequest: Codable {

    /** The invite code to use. */
    public var code: String?

    public init(code: String? = nil) {
        self.code = code
    }

}
