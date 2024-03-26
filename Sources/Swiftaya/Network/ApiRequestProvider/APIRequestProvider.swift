//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
import Combine
open class APIRequestProvider: APIRequestProviderProtocol {
    private let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    public func request<T: APIRequestProtocol>(request: T) -> AnyPublisher<T.Response, Error> {
        guard let url = URL(string: request.baseUrl + request.path) else {
            return Fail(error: NetworkError.noInternetConnection).eraseToAnyPublisher()
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method
        urlRequest.httpBody = request.body
        request.headers?.forEach { key, value in
            urlRequest.addValue(value, forHTTPHeaderField: key)
        }
        
        return session.dataTaskPublisher(for: urlRequest)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse else {
                    throw NetworkError.invalidResponse
                }
                
                guard (200...299).contains(httpResponse.statusCode) else {
                    throw NetworkError.httpError(code: httpResponse.statusCode)
                }
                
                return data
            }
            .decode(type: T.Response.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
