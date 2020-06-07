//
//  RequestTarget.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

protocol RequestTarget {
    var baseUrl: URL { get }
    var path: String { get }
    var header: [String: String] { get }
}

extension RequestTarget {
    var url: URL {
        let urlPath = baseUrl.absoluteString + path

        return URL(string: urlPath)!
    }
}
