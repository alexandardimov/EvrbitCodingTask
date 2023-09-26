//
//  NetworkManager.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation
import Combine

protocol NetworkManaging {
    func fetch(endpoint: Endpoint) async throws -> [ImageModel]
}

class NetworkManager: NetworkManaging {
    private let session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func fetch(endpoint: Endpoint) async throws -> [ImageModel] {
        let request = try createRequest(for: endpoint)
        let (data, _) = try await session.data(for: request)
        var imageModels: [ImageModel] = []
        if let json = try (JSONSerialization.jsonObject(with: data, options: [])) as? [[String : Any]] {
            for image in json {
                imageModels.append(ImageModel(id: image["id"] as! String, url: (image["urls"] as! [String : String])["regular"]!))
            }
        }
        if let json = try (JSONSerialization.jsonObject(with: data, options: [])) as? [String : Any] {
            for image in json["results"] as! [[String : Any]] {
                imageModels.append(ImageModel(id: image["id"] as! String, url: (image["urls"] as! [String : String])["regular"]!))
            }
        }
        
        return imageModels
    }
    
    private func createRequest(for endpoint: Endpoint) throws -> URLRequest {
        var request = URLRequest(url: endpoint.url)
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.headers
        return request
    }
}
