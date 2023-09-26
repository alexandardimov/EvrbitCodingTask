//
//  ContentView.swift
//  EvrbitCodingTask
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ImageListView(viewModel: ImageListViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
