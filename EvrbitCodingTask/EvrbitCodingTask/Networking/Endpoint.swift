//
//  Endpoint.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

struct Endpoint {
    let path: Paths
    let method: HTTPMethod
    let headers: [String: String]?
    let queryParameters: [String: String]?
    
    init(_ path: Paths,
         _ queryParameters: [String : String]? = nil,
         _ method: HTTPMethod = .get,
         _ headers: [String : String]? = nil) {
        self.path = path
        self.queryParameters = queryParameters
        self.method = method
        self.headers = headers
    }

    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.unsplash.com"
        components.path = path.getPath
        components.queryItems = queryParameters?.map {
            URLQueryItem(name: $0, value: $1) }

        guard let url = components.url else {
            fatalError("Invalid URL components")
        }

        return url
    }
}
