//
//  RequestTarget.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

enum Method: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
}

enum HttpCode: Int {
    case unauthorize = 401
}

protocol RequestTarget {
    var baseUrl: URL { get }
    var path: String { get }
    var method: Method { get }
    var header: [String: String] { get }
}

extension RequestTarget {
    var url: URL {
        let urlPath = baseUrl.absoluteString + path

        return URL(string: urlPath)!
    }

    var header: [String: String] {
        return RequestHeaderBuilder()
            .setContentType("application/json")
            .setAppVersion("1.0.0")
            .setXLang("EN")
            .build()
    }
}
