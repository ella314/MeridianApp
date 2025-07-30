//
//  Journal.swift
//  MeridianApp
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct Journal: View {
    var body: some View {
        ZStack{
           Color ("Linen")
                .ignoresSafeArea()
            VStack {
                HStack{
                    Text("                  Journal")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.all, 5.0)
                        Spacer()
                    
                    Button("+"){
                       
                    }
                    .font(.largeTitle)
                    .padding()

                }//HStack
                TextField("Journal here!", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, axis: .vertical )
                    .lineLimit(29...)
                    .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding(.all)
              
                
                    Spacer()
            }//VStack
        }//ZStack
    }//body
}//struct

#Preview {
    Journal()
}//preview

