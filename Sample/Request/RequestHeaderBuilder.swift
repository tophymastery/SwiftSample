//
//  RequestHeaderBuilder.swift
//  Sample
//
//  Created by Akadet on 6/7/20.
//  Copyright © 2020 com.template. All rights reserved.
//

import Foundation

class RequestHeaderBuilder {
    private struct Const {
        static let xLang = "X-Lang"
        static let xVersion = "X-Version"
        static let contentType = "Content-Type"
    }

    var header: [String: String] = [:]

    func setContentType(_ value: String) -> RequestHeaderBuilder {
        header[Const.contentType] = value
        return self
    }

    func setXLang(_ value: String) -> RequestHeaderBuilder {
        header[Const.xLang] = value
        return self
    }

    func setAppVersion(_ value: String) -> RequestHeaderBuilder {
        header[Const.xVersion] = value
        return self
    }

    func build() -> [String: String] {
        return header
    }
}
