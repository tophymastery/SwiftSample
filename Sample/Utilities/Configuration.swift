//
//  Configuration.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

class Configuration {
    static let shared = Configuration()

    let baseUrl: URL = URL(string: "https://some.com")!
}
