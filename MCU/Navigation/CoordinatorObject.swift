//
//  CoordinatorObject.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import Foundation

class CoordinatorObject: ObservableObject {
    
    enum State {
        case loggedIn
        case loggedOut
    }
    
    @Published var state: State = .loggedOut
    
    @Published var loginViewModel: LoginViewModel!
    @Published var listViewModel: ListViewModel!
    
    init() {
        loginViewModel = LoginViewModel(coordinator: self)
        listViewModel = ListViewModel(coordinator: self)
    }
    
    func logIn() {
        state = .loggedIn
    }
    
    func logOut() {
        state = .loggedOut
    }
    
}
