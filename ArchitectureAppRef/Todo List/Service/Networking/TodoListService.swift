//
//  TodoListService.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation
import Alamofire

final class TodoListService {
    
    typealias ItemListOrErrorCompletion = (_ items: [TodoItem]?, _ error: NetworkError?) -> Void
    
    static func getItems(completion:@escaping ItemListOrErrorCompletion) {
        Alamofire.request(TodoListEndPoint.getItems()).responseJSON { response in
            if let status = response.response?.statusCode {
                switch(status) {
                case HTTPStatusCode.ok.rawValue:
                    if let result = response.result.value {
                        guard let jsonItems = result as? [JSONObject] else {
                            completion(nil, NetworkError.parsing)
                            return
                        }
                        
                        var items: [TodoItem] = [TodoItem]()
                        for jsonItem in jsonItems {
                            if let item = TodoItem(fromJSON: jsonItem) {
                                TodoItemDatabase.save(todoItem: item)
                                items.append(item)
                            }
                        }
                        
                        completion(items, nil)
                    }
                default:
                    completion(nil, NetworkError.error)
                }
            }
        }
    }
}
