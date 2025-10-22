//
//  user.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 22/10/25.
//

import Foundation

struct User: Codable {
    var firstName: String   = ""
    var lastName: String    = ""
    var email: String       = ""
    var phone: String       = ""
    var birthday: Date      = Date()
    var newsletter: Bool    = false
    var offers: Bool        = false
    
}
