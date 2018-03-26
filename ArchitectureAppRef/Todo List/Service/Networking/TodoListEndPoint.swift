//
//  TodoListNetworking.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation
import Alamofire

public enum TodoListEndPoint: APIConfiguration {
    case getItems()
    
    var method: HTTPMethod {
        switch self {
        case .getItems:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .getItems():
            return "/items"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .getItems():
            return nil
        }
    }
    
    public func asURLRequest() throws -> URLRequest {
        let url = try NetworkConfiguration.Server.baseURL.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(self.path))
        urlRequest.httpMethod = self.method.rawValue
        
        if let parameters = self.parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: error as! AFError.ParameterEncodingFailureReason)
            }
        }
        
        return urlRequest
    }
    
}
