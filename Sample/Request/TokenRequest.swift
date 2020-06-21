//
//  TokenRequest.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

struct TokenRequest: RequestTarget {
    var baseUrl: URL {
        Configuration.shared.baseUrl
    }

    var path: String {
        return "/refreshToken"
    }

    var method: Method = .get
}
