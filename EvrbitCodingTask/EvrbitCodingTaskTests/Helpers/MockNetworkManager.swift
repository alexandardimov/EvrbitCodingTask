//
//  MockNetworkManager.swift
//  EvrbitCodingTaskTests
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation
@testable import EvrbitCodingTask

class MockNetworkManager: NetworkManaging {
    let error: Error?
    
    var fetchPostsCalled = false
    
    init(error: Error? = nil) {
        self.error = error
    }
    
    func fetch(endpoint: Endpoint) async throws -> [ImageModel] {
        if let error = error {
            throw error
        } else {
            let endPointPath = endpoint.path.getPath
            if  endPointPath == "/photos" {
                fetchPostsCalled = true
                let jsonData = MockData.images.data(using: .utf8)!
                
                var imageModels: [ImageModel] = []
                if let json = try (JSONSerialization.jsonObject(with: jsonData, options: [])) as? [[String : Any]] {
                    for image in json {
                        imageModels.append(ImageModel(id: image["id"] as! String, url: (image["urls"] as! [String : String])["regular"]!))
                    }
                }
                
                return imageModels
            } else {
                throw NetworkError.invalidEndpoint
            }
        }
    }
}
