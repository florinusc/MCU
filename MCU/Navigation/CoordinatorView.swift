//
//  CoordinatorView.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import SwiftUI

struct CoordinatorView: View {
    
    @ObservedObject var object: CoordinatorObject
    
    var body: some View {
        switch object.state {
        case .loggedOut:
            LoginView(viewModel: object.loginViewModel)
        case .loggedIn:
            NavigationView {
                ListView(viewModel: object.listViewModel)
            }
        }
    }
    
}
