//
//  LoginView.swift
//  MCU
//
//  Created by Florin Uscatu on 25.06.2022.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(.secondarySystemBackground))
                .cornerRadius(8)
            
            VStack {
                
                Spacer()
                
                Text("Marvel Cinematic Universe")
                    .font(.headline)
                
                Spacer()
                
                VStack {
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .textFieldStyle(.roundedBorder)
                    SecureField("Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                
                Spacer()
                
                Button {
                    viewModel.logIn()
                } label: {
                    ZStack {
                        Rectangle()
                            .background(.blue)
                            .cornerRadius(8)
                        Text("Login")
                            .foregroundColor(.white)
                    }
                    .frame(height: 45)
                }

            }
            .padding(10)
        }
        .padding(.horizontal, 10)
        .frame(width: nil, height: 220, alignment: .center)
        
    }
}
