//
//  Data+Extension.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

extension Data {
    static func mapResult<T:Codable>(data: Data?, T: T.Type) -> Result<T, NetworkError>  {
        guard
            let dataValue = data,
            let json = try? JSONDecoder().decode(T.self, from: dataValue) else {
                return .failure(.invalidData)
        }

        return .success(json)
    }
}
