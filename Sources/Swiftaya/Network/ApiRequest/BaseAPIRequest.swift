//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
open class BaseAPIRequest<Response: Codable>: APIRequestProtocol {
    
    let path: String
    let method: String
    let body: Data?
    let headers: [String: String]?
    
    init(path: String, method: String, body: Data? = nil, headers: [String: String]? = nil) {
        self.path = path
        self.method = method
        self.body = body
        self.headers = headers
    }
}
