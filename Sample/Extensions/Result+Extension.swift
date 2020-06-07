//
//  Result+Extension.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

extension Result {
    init(_ value: Success?, _ error: Failure?) {
        if let error = error {
            self = .failure(error)
        } else if let value = value {
            self = .success(value)
        } else {
            fatalError("Could not create Result")
        }
    }
}
