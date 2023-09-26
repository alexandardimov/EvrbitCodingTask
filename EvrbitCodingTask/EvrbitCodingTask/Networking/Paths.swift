//
//  Paths.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

enum Paths {
    case list
}

extension Paths {
    var getPath: String {
        switch self {
        case .list:
            return "/photos"
        }
    }
}
