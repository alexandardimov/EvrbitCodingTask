//
//  ImageListView.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import SwiftUI
import Combine

struct ImageListView: View {
    @StateObject var viewModel: ImageListViewModel
    
    @State private var showErrorAlert = false
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible(), spacing: 10)], spacing: 10) {
                    ForEach(viewModel.images) { image in
                        ImageCell(viewModel: viewModel.getImageCellViewModel(image: image))
                            .onAppear {
                                // Fetch next page if needed
                                Task {
                                    if viewModel.shouldFetchNextPage(image) {
                                        await fetchData()
                                    }
                                }
                            }
                    }
                }
                .padding()
                .task {
                    await fetchData()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .alert(isPresented: $showErrorAlert) {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            .navigationTitle("Image Grid List")
        }
    }
    
    private func fetchData() async {
        do {
            try await viewModel.fetchData()
        } catch {
            errorMessage = error.localizedDescription
            showErrorAlert = true
        }
    }
}
