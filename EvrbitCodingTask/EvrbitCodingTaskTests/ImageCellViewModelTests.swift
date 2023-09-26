//
//  ImageCellViewModelTests.swift
//  EvrbitCodingTaskTests
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import XCTest
@testable import EvrbitCodingTask

class ImageListViewModelTests: XCTestCase {
    
    var viewModel: ImageListViewModel!
    var mockNetworkManager: MockNetworkManager!
    
    override func setUp() {
        super.setUp()
        mockNetworkManager = MockNetworkManager()
        
        viewModel = ImageListViewModel(networkManager: mockNetworkManager)
    }
    
    override func tearDown() {
        viewModel = nil
        mockNetworkManager = nil
        super.tearDown()
    }
    
    func testFetchData() async throws {
        
        try await viewModel.fetchData(searchText: "", isFetchedNextPage: false)
        
        let expectation = XCTestExpectation(description: "Fetch data Functions are called")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            XCTAssertTrue(self.mockNetworkManager.fetchPostsCalled)
            
            XCTAssertEqual(self.viewModel.images.count, 3)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testFetchImages() async throws {
        
        try await self.viewModel.fetchData(searchText: "", isFetchedNextPage: false)
        
        let expectation = XCTestExpectation(description: "Check Post Count")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            XCTAssertTrue(self.mockNetworkManager.fetchPostsCalled)
            
            XCTAssertEqual(self.viewModel.images.count, 3)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 1.0)
    }
    
    func testImageCellViewModelSuccess() async throws {

        let image = ImageModel(id: "_tDdlCJIwOA", url: "")

        try await viewModel.fetchData(searchText: "", isFetchedNextPage: false)

        let expectation = XCTestExpectation(description: "Fetch Data and match Post Cell ViewModel")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {

            XCTAssertEqual(self.viewModel.images.count, 3)

            let imageCellViewModel = self.viewModel.getImageCellViewModel(image: self.viewModel.images.first!)

            XCTAssertEqual(imageCellViewModel.image.id, image.id)

            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)
    }
    
    func testFetchDataWithError() async throws {
        let mockNetworkManager = MockNetworkManager(error: NetworkError.invalidEndpoint)

        let viewModel = ImageListViewModel(networkManager: mockNetworkManager)

        do {
            try await viewModel.fetchData(searchText: "", isFetchedNextPage: false)
        } catch  let err {
            XCTAssertEqual(err.localizedDescription, NetworkError.invalidEndpoint.localizedDescription)
        }

        XCTAssertNotNil(viewModel.images)
        XCTAssertTrue(viewModel.images.isEmpty)
    }
    
    func testFetchDataWithRandomError() async throws {
        let mockNetworkManager = MockNetworkManager(error: NetworkError.invalidEndpoint)

        let viewModel = ImageListViewModel(networkManager: mockNetworkManager)

        do {
            try await viewModel.fetchData(searchText: "", isFetchedNextPage: false)
        } catch  let err {
            XCTAssertEqual(err.localizedDescription, NetworkError.invalidEndpoint.localizedDescription)
        }

        XCTAssertNotNil(viewModel.images)
        XCTAssertTrue(viewModel.images.isEmpty)
    }
    
    func testFetchDataWithErrorUnknown() async throws {
        let error = NSError(domain: "", code: 401, userInfo: [NSLocalizedDescriptionKey: "Invalid Responce"])
        let mockNetworkManager = MockNetworkManager(error: error)

        let viewModel = ImageListViewModel(networkManager: mockNetworkManager)

        do {
            try await viewModel.fetchData(searchText: "", isFetchedNextPage: false)
        } catch  let err {
            XCTAssertNotNil(err)
        }

        XCTAssertNotNil(viewModel.images)
        XCTAssertTrue(viewModel.images.isEmpty)
    }
}
