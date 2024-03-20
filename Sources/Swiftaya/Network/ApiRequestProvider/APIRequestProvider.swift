//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
open class APIRequestProvider: APIRequestProviderProtocol {
    let session: URLSession
    
    public init(session: URLSession = .shared) {
        self.session = session
    }
    
    public func request<T: APIRequestProtocol>(_ request: T, completion: @escaping (Result<T.Response, Error>) -> Void) {
        
        var urlRequest = URLRequest(url: URL(string: request.path)!)
        urlRequest.httpMethod = request.method
        urlRequest.httpBody = request.body
        request.headers?.forEach { key, value in
            urlRequest.addValue(value, forHTTPHeaderField: key)
        }
        let task = session.dataTask(with: urlRequest) { data, response, error in
                   if let error = error {
                       completion(.failure(error))
                       return
                   }
                   
                   guard let httpResponse = response as? HTTPURLResponse else {
                       completion(.failure(NetworkError.invalidResponse))
                       return
                   }
                   
                   guard (200...299).contains(httpResponse.statusCode) else {
                       completion(.failure(NetworkError.httpError(code: httpResponse.statusCode)))
                       return
                   }
                   
                   guard let data = data else {
                       completion(.failure(NetworkError.noData))
                       return
                   }
                   
                   do {
                       let decodedResponse = try JSONDecoder().decode(T.Response.self, from: data)
                       completion(.success(decodedResponse))
                   } catch {
                       completion(.failure(error))
                   }
               }
               
               task.resume()
           }
       }

