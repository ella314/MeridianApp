import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Rectangle()
                    .fill(Color("Light coral").opacity(0.7))
                Text("Home")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Light coral").opacity(0.7))
                    .frame(height: 100)
                    .overlay(
                        Text("quote")
                            .font(.title)
                            .foregroundColor(.black)
                    )
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Light coral").opacity(0.7))
                    .frame(height: 300)
                    .overlay(
                        Text("Reminders")
                            .font(.title)
                            .foregroundColor(.black)
                    )
                
                Spacer()
            }
            .padding()
            .background(Color("Linen"))
        }
    }
}

#Preview {
    ContentView()
}

