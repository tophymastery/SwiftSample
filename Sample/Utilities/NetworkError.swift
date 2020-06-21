//
//  NetworkError.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case fetchFailed(Error)
    case invalidData
    case tokenExpired
    case unauthorized
    case noError

    static func map(_ error: Error?, _ response: URLResponse?) -> NetworkError {
        let statusCode = response
            .flatMap { $0 as? HTTPURLResponse }
            .map { $0.statusCode }
            .flatMap(HttpCode.init)

        switch statusCode {
        case .unauthorize:
            return .tokenExpired
        default:
            return .noError
        }
    }
}
