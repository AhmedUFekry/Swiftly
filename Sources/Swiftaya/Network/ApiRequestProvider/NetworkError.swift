//
//  File.swift
//  
//
//  Created by A7med Fekry on 19/03/2024.
//

import Foundation
open enum NetworkError: Error {
    case noInternetConnection
    case invalidResponse
    case httpError(code: Int)
    case noData
}
