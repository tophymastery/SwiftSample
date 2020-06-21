//
//  AccessToken.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

struct AccessToken: Codable {
    var value: String
    var createTime: Date
    var expired: Int

    var isValid: Bool {
        return true
    }
}
