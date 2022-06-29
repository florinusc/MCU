//
//  ListView.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<viewModel.numberOfMovies) { index in
                    NavigationLink {
                        DetailView(viewModel: viewModel.detailViewModel(at: index))
                    } label: {
                        MovieListView(viewModel: viewModel.movieListViewModel(at: index))
                    }
                }
                
                Button {
                    viewModel.logOut()
                } label: {
                    Text("Log out")
                }
            }
        }
        

    }
    
}
