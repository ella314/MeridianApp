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
           Color ("Linen 1")
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
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .font(.largeTitle)
                    .padding()

                }//HStack
                TextField("Journal here!", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, axis: .vertical )
                    .lineLimit(30...)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius:16).stroke(.black, lineWidth:1))
                    .padding(.horizontal)
              
                
                    Spacer()
            }//VStack
        }//ZStack
    }//body
}//struct

#Preview {
    Journal()
}//preview
