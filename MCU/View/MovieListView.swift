//
//  MovieListView.swift
//  MCU
//
//  Created by Florin Uscatu on 29.06.2022.
//

import SwiftUI
import Kingfisher

struct MovieListView: View {
    
    let viewModel: MovieListViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            KFImage(viewModel.coverURL)
                .resizable()
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding(.leading, 5)
            VStack(alignment: .leading) {
                Text(viewModel.title)
                    .multilineTextAlignment(.leading)
                    .font(.title3)
                if let releaseDate = viewModel.releaseDate {
                    Text(releaseDate)
                        .font(.footnote)
                }
            }
            Spacer()
        }
    }
    
}
