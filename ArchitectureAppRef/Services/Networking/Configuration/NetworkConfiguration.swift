//
//  NetworkConfiguration.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

struct NetworkConfiguration {
    struct Server {
        static let baseURL = "http://localhost:3000"
    }
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum HTTPStatusCode: Int {
    case ok = 200
    case notAuthorized = 401
    case notFound = 404
}
