//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
import Combine
//public protocol BaseUseCaseProtocol {
//    associatedtype Request: APIRequestProtocol
//    func execute(request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void)
//}

public protocol BaseUseCaseProtocol {
    associatedtype Request: APIRequestProtocol
    func execute(request: Request) -> AnyPublisher<Request.Response, Error>
}
