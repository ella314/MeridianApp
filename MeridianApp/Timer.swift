//
//  Timer.swift
//  MeridianApp
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining: Int = 0 // Total seconds (e.g., 5 minutes)
    @State private var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color("Linen")
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Text("Timer")
                    .font(.system(size: 60))
                Text(timeString(from: timeRemaining))
                    .font(.system(size: 48, weight: .bold, design: .monospaced))
                    .padding()
                    .background(Color("Cambridge"))
                    .cornerRadius(15)
                    .foregroundStyle(Color.white)
                    .shadow(radius:3)
                
                HStack(spacing: 20) {
                    Button(timerRunning ? "Pause" : "Start") {
                        timerRunning.toggle()
                    }
                    .font(.title2)
                    .padding(8)
                    .background(Color("Cambridge"))
                    .foregroundStyle(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    
                    Button("Reset") {
                        timeRemaining = 0
                        timerRunning = false
                    }
                    .font(.title2)
                    .padding(8)
                    .background(Color("Cambridge"))
                    .foregroundStyle(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                }
                HStack {
                    Button("Study") {
                        timeRemaining = 1500
                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background(Color("Cambridge"))
                    .foregroundStyle(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                    Button("Short \nBreak") {
                        timeRemaining = 300
                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background(Color("Cambridge"))
                    .cornerRadius(15)
                    .foregroundStyle(Color.white)
                    .shadow(radius: 3)
                    Button("Long \nBreak") {
                        timeRemaining = 600
                    }
                    .padding()
                    .frame(width: 80, height: 80)
                    .background(Color("Cambridge"))
                    .foregroundStyle(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 3)
                }
            }
        }
        .onReceive(timer) { _ in
            guard timerRunning, timeRemaining > 0 else { return }
            timeRemaining -= 1
        }
    }

    private func timeString(from seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview {
    TimerView()
}
