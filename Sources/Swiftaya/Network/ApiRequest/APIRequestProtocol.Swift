//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
public protocol APIRequestProtocol {
    var Response: Codable
    var path: String { get }
    var method: String { get }
    var body: Data? { get }
    var headers: [String: String]? { get }
}


