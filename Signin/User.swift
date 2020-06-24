//
//  User.swift
//  Signin
//
//  Created by Nafisur on 24/06/20.
//  Copyright © 2020 cdac. All rights reserved.
//

import Foundation
import AuthenticationServices

struct User {
    let id: String
    let email: String
    let name: String
    
    
    init(credentials: ASAuthorizationAppleIDCredential) {
        self.id = credentials.user
        self.name = credentials.fullName?.givenName ?? ""
        self.email = credentials.email ?? ""
    }
}

extension User: CustomDebugStringConvertible {
    var debugDescription: String{
        return "ID: \(id), Name: \(name) Email: \(email)"
    }
}
