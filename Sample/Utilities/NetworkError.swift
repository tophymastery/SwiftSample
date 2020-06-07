//
//  NetworkError.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

enum NetworkError: Error {
    case fetchFailed(Error)
    case invalidData

    static func map(error: Error?) -> NetworkError {
        .invalidData
    }
}
