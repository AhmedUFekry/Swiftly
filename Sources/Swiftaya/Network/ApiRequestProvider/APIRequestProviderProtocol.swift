//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
import Combine
/*public protocol APIRequestProviderProtocol {
    func request<T:APIRequestProtocol>(_ request: T, completion: @escaping (Result<T.Response, Error>) -> Void)
}*/
public protocol APIRequestProviderProtocol {
    func request<T: APIRequestProtocol>(request: T) -> AnyPublisher<T.Response, Error>
}
