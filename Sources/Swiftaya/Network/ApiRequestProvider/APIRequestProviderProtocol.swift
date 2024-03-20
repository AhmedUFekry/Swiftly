//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
public protocol APIRequestProviderProtocol {
    func request<T: APIRequestProtocol>(_ request: T, completion: @escaping (Result<T.Response, Error>) -> Void)
}
public protocol APIRequestProtocol {
    associatedtype Response: Codable
    var path: String { get }
    var method: String { get }
    var body: Data? { get }
    var headers: [String: String]? { get }
}

