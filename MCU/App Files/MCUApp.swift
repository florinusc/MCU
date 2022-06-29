//
//  MCUApp.swift
//  MCU
//
//  Created by Florin Uscatu on 25.06.2022.
//

import SwiftUI

@main
struct MCUApp: App {
    
    let coordinatorObject = CoordinatorObject()
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView(object: coordinatorObject)
        }
    }
}
