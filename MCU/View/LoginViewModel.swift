//
//  LoginViewModel.swift
//  MCU
//
//  Created by Florin Uscatu on 26.06.2022.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    private unowned let coordinator: CoordinatorObject
    
    init(coordinator: CoordinatorObject) {
        self.coordinator = coordinator
    }
    
    func logIn() {
        coordinator.logIn()
    }
    
}
