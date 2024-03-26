//
//  File.swift
//  
//
//  Created by A7med Fekry on 20/03/2024.
//

import Foundation
public protocol APIRequestProtocol {
    associatedtype Response: Codable
    var baseUrl: String { get }
    var path: String { get }
    var method: String { get }
    var body: Data? { get }
    var headers: [String: String]? { get }
}
