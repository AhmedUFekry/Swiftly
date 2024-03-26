//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
open class BaseUseCase<Request: APIRequestProtocol>: BaseUseCaseProtocol {
    //let repository: any BaseRepositoryProtocol
    
    public func execute(request: Request, completion: @escaping (Result<Request.Response, Error>) -> Void) {
       // repository.execute(request: request, completion: completion)
        
    }
}
