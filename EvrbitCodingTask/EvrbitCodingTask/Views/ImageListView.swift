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
    
    @State private var searchText = ""
    
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
                                        await fetchData(searchText: searchText, isFetchedNextPage: true)
                                    }
                                }
                            }
                    }
                }
                .padding()
                .task {
                    await fetchData(searchText: searchText)
                }
                SearchedView(fetchData: fetchData)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .alert(isPresented: $showErrorAlert) {
                Alert(title: Text("Error"), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            .navigationTitle("Evrbit")
        }.searchable(text: $searchText, prompt: "Search Images").onSubmit(of: .search) {
            Task {
                await fetchData(searchText: searchText)
            }
        }
    }
    
    private func fetchData(searchText: String, isFetchedNextPage: Bool = false) async {
        do {
            try await viewModel.fetchData(searchText: searchText, isFetchedNextPage: isFetchedNextPage)
        } catch {
            errorMessage = error.localizedDescription
            showErrorAlert = true
        }
    }
}

struct SearchedView: View {
    @Environment(\.isSearching) private var isSearching
    
    var fetchData: (String, Bool) async -> Void
    
    var body: some View {
        Text("").onChange(of: isSearching) { newValue in
            if !newValue {
                Task {
                    await fetchData("", false)
                }
            }
        }
    }
}
