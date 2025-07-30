import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Light coral").opacity(0.7))
                    .frame(height: 100)
                    .overlay(
                        HStack(spacing: 20) {
                            NavigationLink(destination: TodoViewMainView()) {
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.white)
                                    .clipShape(Circle())
                            }
                                   }
                                   .padding()
                    )
                
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
        }//Navigation
    }
}

#Preview {
    ContentView()
}

