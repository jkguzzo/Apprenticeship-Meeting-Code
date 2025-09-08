//
//  NetworkService.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    
    func createUser(name: String, job: String) async throws -> CreatedUser {
        let url = URL(string: "https://reqres.in/api/users")!
        
        // TODO: define request using URLRequest
        
        // TODO: define httpMethod of request

        // TODO: define a NewUser object
        
        // TODO: set request's httpBody to be the result of JSONEncoding NewUser object
        
        // TODO: set request's "Content-Type" to be "application/json"
        
        // TODO: set request's "x-api-key" to be "reqres-free-v1"

        // TODO: make network request using URLSession
        
        // TODO: decode result into CreatedUser
        
        // TODO: return decoded result
        return CreatedUser() // placeholder
    }
}
