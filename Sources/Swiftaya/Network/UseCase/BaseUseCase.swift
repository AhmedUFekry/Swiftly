//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
class BaseUseCase<Request: APIRequestProtocol>: BaseUseCaseProtocol {
    let repository: BaseRepository<Request>
    
    public init(repository: BaseRepository<Request> = BaseRepository()) {
        self.repository = repository
    }
    
    public func execute(request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void) {
        repository.execute(request: request, completion: completion)
    }
}
