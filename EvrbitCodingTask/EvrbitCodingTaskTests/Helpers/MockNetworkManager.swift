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
    
    func fetch<T: Decodable>(endpoint: Endpoint) async throws -> T {
        if let error = error {
            throw error
        } else {
            let endPointPath = endpoint.path.getPath
            if  endPointPath == "/photos" {
                fetchPostsCalled = true
                let jsonData = MockData.images.data(using: .utf8)!
                return try JSONDecoder().decode([ImageModel].self, from: jsonData) as! T
            } else {
                throw NetworkError.invalidEndpoint
            }
        }
    }
}
