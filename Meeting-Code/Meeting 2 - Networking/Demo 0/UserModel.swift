//
//  UserModel.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

struct NewUser: Codable {
    var name: String
    var job: String
}

struct CreatedUser: Codable {
    var id: String = ""
    var createdAt: String = ""
}
