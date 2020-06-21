//
//  Memoize.swift
//  Sample
//
//  Created by Akadet on 6/21/20.
//  Copyright © 2020 com.template. All rights reserved.
//

func memoize<Input: Hashable, Output>(_ function: @escaping (Input) -> Output) -> (Input) -> Output {
    var storage = [Input: Output]()

    return { input in
        if let cached = storage[input] {
            return cached
        }

        let result = function(input)
        storage[input] = result

        return result
    }
}

func memoizeRecursive<Input: Hashable, Output>(_ function: @escaping ((Input) -> Output, Input) -> Output) -> (Input) -> Output {
    var storage = [Input: Output]()
    var memo :((Input) -> Output)!

    memo = { input in
        if let cached = storage[input] {
            return cached
        }

        let result = function(memo, input)
        storage[input] = result

        return result
    }

    return memo
}
