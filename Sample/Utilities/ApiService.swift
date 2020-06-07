//
//  APIService.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

typealias Handler<T: Codable, U: Error> = ((Result<T, U>) -> Void)
typealias JSON = [String: Any]

class ApiService {
    static let shared = ApiService()

    func request<T: Codable>(reuquest: RequestTarget, completion: @escaping Handler<T, NetworkError>) {
        let task = URLSession.shared.dataTask(with: reuquest.url) { (data, response, error) in
            let errorDataTask = error.map(NetworkError.fetchFailed)

            let result = Result<Data, NetworkError>(data,errorDataTask)
                .mapError(NetworkError.map)
                .map { ($0, T.self) }
                .flatMap(Data.mapResult)

            completion(result)

        }

        task.resume()
    }
}
