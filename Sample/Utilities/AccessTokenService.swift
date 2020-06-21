//
//  AccessTokenService.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

class AccessTokenService {
    private struct Const {
        static let queueLabel = "AccessToken"
    }

    typealias Handler = (Result<AccessToken, NetworkError>) -> Void

    static let shared = AccessTokenService()

    private var loader: AccessTokenLoader
    private var queue: DispatchQueue

    private var pendingHandlers = [Handler]()
    private var token: AccessToken?

    init(
        loader: AccessTokenLoader = AccessTokenLoader(),
        queue: DispatchQueue = .init(label: Const.queueLabel)
    ) {
        self.loader = loader
        self.queue = queue
    }

    func refreshTokenIfNeed(completion: @escaping Handler) {
        if let accessToken = token, accessToken.isValid {
            completion(.success(accessToken))
        }

        pendingHandlers.append(completion)

        if pendingHandlers.count > 1 {
            return
        }

        loader.load { [weak self] result in
            self?.queue.async {
                self?.handle(result)
            }
        }
    }
}

private extension AccessTokenService {
    func handle(_ result: Result<AccessToken, NetworkError>) {
        token = try? result.get()

        pendingHandlers.forEach { $0(result) }

        pendingHandlers = []
    }
}
