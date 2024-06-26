//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
import Combine
//open class BaseRepository<Request: APIRequestProtocol>: BaseRepositoryProtocol {
//    let provider: APIRequestProviderProtocol
//    
//    public init(provider: APIRequestProviderProtocol = APIRequestProvider()) {
//        self.provider = provider
//    }
//    
//    public func execute(request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void) {
//        provider.request(request, completion: completion)
//    }
//}
open class BaseRepository<Request: APIRequestProtocol>: BaseRepositoryProtocol {
    private let provider: APIRequestProviderProtocol
    
    public init(provider: APIRequestProviderProtocol = APIRequestProvider()) {
        self.provider = provider
    }
    
    public func execute(request: Request) -> AnyPublisher<Request.Response, Error> {
        return provider.request(request: request)
    }
}

