//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
open class BaseAPIRequest<Response: Codable>: APIRequestProtocol {
    
    public let path: String
    public let method: String
    public let body: Data?
    public let headers: [String: String]?
    
    init(path: String, method: String, body: Data? = nil, headers: [String: String]? = nil) {
        self.path = path
        self.method = method
        self.body = body
        self.headers = headers
    }
}
