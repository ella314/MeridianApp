    import SwiftUI

    struct ContentView: View {
        @State private var quoteText: String = ""
        @State private var reminderText: String = ""
      var body: some View {
        NavigationStack {
          ZStack {
            Color("Linen")
              .ignoresSafeArea()
            VStack {
              Text("Home")
                .font(.largeTitle)
                .fontWeight(.bold)
              ZStack {
                RoundedRectangle(cornerRadius: 25)
                  .fill(Color("Cambridge").opacity(0.7))
                  .frame(height: 100)
                  TextField("Inspirational quote here!", text: $quoteText, axis: .vertical )
                  .lineLimit(2...)
                  .padding()
                  .overlay(RoundedRectangle(cornerRadius:16).stroke(.black, lineWidth:1))
                  .padding(.horizontal)
              }
              ZStack {
                RoundedRectangle(cornerRadius: 25)
                  .fill(Color("Cambridge").opacity(0.7))
                  .frame(height: 300)
                Spacer()
                TextField("Reminders here!", text: $reminderText, axis: .vertical )
                  .lineLimit(10...)
                  .padding()
                  .overlay(RoundedRectangle(cornerRadius:16).stroke(.black, lineWidth:1))
                  .padding(.horizontal)
              }
              Spacer()
            }.padding()
          }
        }
      }
    }
    #Preview {
      ContentView()
    }
