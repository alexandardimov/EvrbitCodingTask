//
//  ImageModel.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

struct ImageModel: Identifiable {
    let id: String
    let url: String
    
    init(id: String, url: String) {
        self.id = id
        self.url = url
    }
}
