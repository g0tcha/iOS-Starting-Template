//
//  NetworkError.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

enum NetworkError: Error, CustomStringConvertible {
    case parsing
    case error
    
    var description: String {
        switch self {
        case .parsing:
            return Localized(key: "network_error_parsing")
        case .error:
            return Localized(key: "network_error_error")
        }
    }
}
