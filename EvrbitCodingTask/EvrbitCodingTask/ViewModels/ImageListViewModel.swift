//
//  ImageListViewModel.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import SwiftUI

class ImageListViewModel: ObservableObject {
    @Published private(set) var images: [ImageModel] = []
    private let networkManager: NetworkManaging
    private var page = 1
    private let pageSize = 30
    private let clientId = "v6acvh0xLU5G5_w4TbevuthzNoBxA_fu93k900XZhGc"
    private var isFetchingData = false
    
    init(networkManager: NetworkManaging = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    // Handle Network Call here
    func fetchData() async  throws {
        guard !isFetchingData else { return }
        
        isFetchingData = true
        
        do {
            let fetchedImages: [ImageModel] = try await networkManager.fetch(endpoint: Endpoint(.list, ["client_id" : clientId, "page": "\(page)", "per_page": "\(pageSize)"]))
            
            DispatchQueue.main.async {
                self.images.append(contentsOf: fetchedImages)
                self.isFetchingData = false
            }
            
            page += 1
        } catch {
            DispatchQueue.main.async {
                self.isFetchingData = false
            }
            
            if let networkError = error as? NetworkError {
                print("Network Error: ", networkError.localizedDescription)
                // Present a user-friendly error message or handle the error appropriately.
            } else {
                print("Error: ", error.localizedDescription)
                // Present a user-friendly error message or handle the error appropriately.
            }
            
            throw error
        }
    }
    
    // Fetch Next Page Content
    func shouldFetchNextPage(_ image: ImageModel) -> Bool {
        guard let lastImage = images.last else { return false }
        return image.id == lastImage.id
    }
    
    // Here Get ViewModel for Image cell
    func getImageCellViewModel(image: ImageModel) -> ImageCellViewModel {
        return ImageCellViewModel(image: image)
    }
}
