//
//  AccessTokenLoader.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

class AccessTokenLoader: NetworkLoader {
    let request = TokenRequest()

    func load(completion: @escaping Handler<AccessToken, NetworkError>) {
        ApiService.shared.request(reuquest: request, completion: completion)
    }
}
