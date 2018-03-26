//
//  TodoItemRepresentable.swift
//  ArchitectureAppRef
//
//  Created by vincent on 26/03/2018.
//  Copyright © 2018 Infostrates. All rights reserved.
//

import Foundation

protocol TodoItemRepresentable {
    var title: String { get }
    var isDone: Bool { get }
}
