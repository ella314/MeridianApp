//
//  NotEmptyMood.swift
//  MeridianApp
//
//  Created by Scholar on 7/31/25.
//

import SwiftUI
import Foundation
import SwiftData

struct NotEmptyMood: View {

//  @State private var buttonColor: Color = .blue // Initial color
@State private var colors: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors
@State private var currentColorIndex: Int = 0 // Tracks the current color index

@State private var currentColorIndex2: Int = 0 // Tracks the current color index
@State private var colors2: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors

@State private var currentColorIndex3: Int = 0 // Tracks the current color index
@State private var colors3: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors

@State private var currentColorIndex4: Int = 0 // Tracks the current color index
@State private var colors4: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors

@State private var currentColorIndex5: Int = 0 // Tracks the current color index
@State private var colors5: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors

@State private var currentColorIndex6: Int = 0 // Tracks the current color index
@State private var colors6: [Color] = [.cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow] // Array of colors

@State private var currentColorIndex7: Int = 0 // Tracks the current color index
@State private var colors7: [Color] = [ .cambridge, .black, .red, .green, .blue, .orange, .purple, .yellow ] // Array of colors
@Environment(\.modelContext) var modelContext

    var body: some View {
        NavigationStack {
            
            
            ZStack {
                Color.linen.opacity(1)
                    .ignoresSafeArea()
                
                VStack {
                    Text ("Mood Tracker")
                    
                    
                    Button(" monday                         ") {
                        if currentColorIndex == 6  {
                            currentColorIndex = 0
                            
                        }
                        else {
                            currentColorIndex += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors[currentColorIndex])
                    
                    Button  (" tuesday                         ") {
                        if currentColorIndex2 == 6  {
                            currentColorIndex2 = 0
                            
                        }
                        else {
                            currentColorIndex2 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors2[currentColorIndex2])
                    
                    Button  (" wednesday                   ") {
                        if currentColorIndex3 == 6  {
                            currentColorIndex3 = 0
                            
                        }
                        else {
                            currentColorIndex3 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors3[currentColorIndex3])
                    
                    Button  (" thursday                        ") {
                        if currentColorIndex4 == 6  {
                            currentColorIndex4 = 0
                            
                        }
                        else {
                            currentColorIndex4 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors4[currentColorIndex4])
                    
                    Button  (" friday                              ") {
                        if currentColorIndex5 == 6  {
                            currentColorIndex5 = 0
                            
                        }
                        else {
                            currentColorIndex5 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors5[currentColorIndex5])
                    
                    Button  (" saturday                         ") {
                        if currentColorIndex6 == 6  {
                            currentColorIndex6 = 0
                            
                        }
                        else {
                            currentColorIndex6 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors6[currentColorIndex6])
                    
                    Button  (" sunday                           ") {
                        if currentColorIndex7 == 6  {
                            currentColorIndex7 = 0
                            
                        }
                        else {
                            currentColorIndex7 += 1
                        }
                        
                    }
                    .font(.title2)
                    .frame(width: 500.0, height: 100.0) // Sets a fixed width
                    .buttonStyle(.borderedProminent)
                    .tint(colors7[currentColorIndex7])
            Spacer()
                    
                    //     Button("Click Me") {
                    // Change the color when the button is tapped
                    //     buttonColor = .red
                    // color = isPressed ? .red : .blue
                    //  var body: some View {
                    //   Button(action: {
                    // Increment the index and cycle back to the beginning if it exceeds the array size
                    //          self.currentColorIndex = (self.currentColorIndex + 1) % self.colors.count
                    //         }) {
                    //   Text("Click Me!")
                    //      //.font(.title)
                    //     .padding()
                    //   .foreground//Color(.white)
                }
                //  .background(colors[currentColorIndex]) // Set background color based on the current index
                //.cornerRadius(10)
            }
        }
        //VStack {
        //  Grid {
        // GridRow {
        //    Text("R1, C1")
        //  Text("R1, C2")
        //Text("R1, C3")
        //}
        //GridRow {
        //  Text("R2, C1")
        //Text("R2, C2")
        //  .gridCellColumns(2) // Spans two columns
        //}
        //GridRow {
        //  Text("R3, C1")
        //Text("R3, C2")
        // Text("R3, C3")
        //}
        // }
        //}
        //    Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        
        
        // Button(action: { ... }): The action closure
        //        Text("Click Me!") //.
        //      .background(colors[currentColorIndex]):
        //    .cornerRadius(10):
        
        //}
        
        
        
        
        
        
        //     }
        //   .background(buttonColor)
        // .foregroundColor(.white) // For text color
        //  .cornerRadius(10) // Optional: for rounded corners
        
        //  Image(systemName: "globe")
        //     .imageScale(.large)
        //     .foregroundStyle(.tint)
        // Text("Hello, world!")
        //        }
        //  .padding()
    }
}

#Preview {
    NotEmptyMood()
}
