//
//  JournalPassword.swift
//  MeridianApp
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct JournalPasswordView: View {
    @State private var password = ""
    @State private var isAuthenticated = false
    @State private var showError = false
    
    private let correctPassword = "KodeWithKlossy@123"
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color ("Cambridge")
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("Enter Password")
                        .font(.headline)
                        .foregroundColor(Color("Linen 1"))
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    Button("Submit") {
                        if password == correctPassword {
                            isAuthenticated = true
                            password = ""
                        } else {
                            showError = true
                            password = ""
                        }
                    }
                    .padding()
                    .background(Color.linen)
                    .cornerRadius(15)
                    .foregroundStyle(Color.black)
                    if showError {
                        Text("Incorrect password. Try again.")
                            .foregroundColor(Color ("Linen"))
                    }
                }
                .padding()
                
                NavigationLink("", destination: Journal(), isActive: $isAuthenticated)
                    .hidden()
            } //ZStack
        }//NavStack
            
        }//Body
    }//Struct


#Preview {
    JournalPasswordView()
}
