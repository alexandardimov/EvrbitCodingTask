//
//  ImageCell.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import SwiftUI
import Kingfisher

struct ImageCell: View {
    
    @StateObject var viewModel: ImageCellViewModel
    @State private var isLoading = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            KFImage(viewModel.url)
                .resizable()
                .placeholder {
                    Image(systemName: "photo")
                }
                .onProgress { receivedSize, totalSize in
                    isLoading = true
                }
                .onSuccess { result in
                    isLoading = false
                }
                .onFailure { error in
                    isLoading = false
                }
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 4)
            
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray.opacity(0.5), lineWidth: 1)
        }
    }
}
