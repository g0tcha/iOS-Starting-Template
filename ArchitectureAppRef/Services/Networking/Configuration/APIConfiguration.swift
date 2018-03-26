//
//  APIConfiguration.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    
    // MARK: - Properties
    
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
    
}
