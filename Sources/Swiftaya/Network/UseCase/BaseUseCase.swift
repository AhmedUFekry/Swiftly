//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
import Combine
//open class BaseUseCase<Request: APIRequestProtocol>: BaseUseCaseProtocol {
//    //let repository: any BaseRepositoryProtocol
//
//    public func execute(request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void) {
//       // repository.execute(request: request, completion: completion)
//
//    }
//}

open class BaseUseCase<Request: APIRequestProtocol>: BaseUseCaseProtocol {
    private let repository: BaseRepository<Request>
    
    public init(repository: any BaseRepositoryProtocol) {
        self.repository = repository as! BaseRepository<Request>
    }
    
    public func execute(request: Request) -> AnyPublisher<Request.Response, Error> {
        return repository.execute(request: request)
    }
}

