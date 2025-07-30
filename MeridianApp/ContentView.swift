import SwiftUI
struct ContentView: View {
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
            TextField("Inspirational quote here!", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, axis: .vertical )
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
            TextField("Reminders here!", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/, axis: .vertical )
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
