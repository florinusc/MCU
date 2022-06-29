//
//  DetailView.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var viewModel: DetailViewModel
    
    var body: some View {
        Text(viewModel.movieTitle)
    }
    
}
