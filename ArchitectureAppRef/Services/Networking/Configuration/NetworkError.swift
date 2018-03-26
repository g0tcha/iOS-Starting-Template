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
    
    var description: String {
        switch self {
        case .parsing:
            return Localized(key: "network_error_parsing")
        default:
            return ""
        }
    }
}
