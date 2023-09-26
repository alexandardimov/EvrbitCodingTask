//
//  ImageCellViewModel.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

class ImageCellViewModel: ObservableObject {
    @Published var image: ImageModel
    
    var url: URL {
        URL(string: self.image.urls["regular"]!)!
    }
    
    init(image: ImageModel) {
        self.image = image
    }
}
