//
//  MoodTracker.swift
// Meridian App
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct MoodTracker: View {
    let daysOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    // Store the color for each day
       @State private var dayColors: [Color] = Array(repeating: Color.gray.opacity(0.2), count: 7)
      @State private var selectedIndex: Int? = nil
    var body: some View {
        ZStack{
            Color ("Linen")
                .ignoresSafeArea()
            VStack{
                Text ("Mood Tracker")
                    .font(.title)
                    .padding()
                
                HStack(spacing: 10) {
                                   ForEach(daysOfWeek.indices, id: \.self) { index in
                                       Text(daysOfWeek[index])
                                           .frame(width: 44, height: 44)
                                           .background(dayColors[index])
                                           .foregroundColor(.black)
                                           .cornerRadius(8)
                                           .overlay(
                                               RoundedRectangle(cornerRadius: 8)
                                                   .stroke(selectedIndex == index ? Color.blue : Color.clear, lineWidth: 2)
                                           )
                                           .onTapGesture {
                                               selectedIndex = index
                                           }
                                   }
                               }
                               .padding(.bottom)
                               .padding(.horizontal)

     
                HStack{   Button("Happy") {
                    changeColor(to: Color("Happy"))
                }
                .padding()
                .background(Color ("Happy"))
                .cornerRadius(15)
                .foregroundStyle(Color.black)
            
                    Button("Sad") {
                        changeColor(to: Color("Sad 1"))
                    }
                    .padding()
                    .background(Color ("Sad 1"))
                    .cornerRadius(15)
                    .foregroundStyle(Color.black)
                    Button("Stress") {
                        changeColor(to: Color("Stress"))
                    }
                    .padding()
                    .background(Color ("Stress"))
                    .cornerRadius(15)
                    .foregroundStyle(Color.black)
                }//HStack
                    HStack{
                        Button("Surprise") {
                            changeColor(to: Color("Surprise"))
                        }
                        .padding()
                        .background(Color ("Surprise"))
                        .cornerRadius(15)
                        .foregroundStyle(Color.black)

                        Button("Anger") {
                            changeColor(to: Color("Anger"))
                        }
                        .padding()
                        .background(Color ("Anger"))
                        .cornerRadius(15)
                        .foregroundStyle(Color.black)

                        Button("Scared") {
                            changeColor(to: Color("Scared"))
                        }
                        .padding()
                        .background(Color ("Scared"))
                        .cornerRadius(15)
                        .foregroundStyle(Color.black)

                    }//HStack 2
                HStack{
                    Button("Reset") {
                        changeColor(to: Color.gray.opacity(0.2))
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(15)
                    .foregroundStyle(Color.black)
                    
                    Button("Reset All") {
                        dayColors = Array(repeating: Color.gray.opacity(0.2), count: 7)
                                            selectedIndex = nil
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    .foregroundStyle(.white)
                }//HStack3
            }//VStack
            .padding()
        }//ZStack
    }//Body
    func changeColor(to newColor: Color) {
        guard let index = selectedIndex else { return }
        dayColors[index] = newColor}
}//Struct

#Preview {
    MoodTracker()
}//Preview
