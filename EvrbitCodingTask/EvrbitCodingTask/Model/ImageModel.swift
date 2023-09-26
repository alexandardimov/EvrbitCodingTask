//
//  ImageModel.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

struct ImageModel: Codable, Identifiable {
    let id: String
    let urls: [String : String]
}
