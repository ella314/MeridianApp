import SwiftUI

struct Journal: View {
    @State private var journalText: String = UserDefaults.standard.string(forKey: "journalEntry") ?? ""

    var body: some View {
        ZStack {
            Color("Linen")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("                  Journal")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        .padding(.all, 5.0)
                    Spacer()
                    Text("✏️") // optional emoji instead of +
                        .font(.largeTitle)
                        .padding()
                }

                TextField("Journal here!", text: $journalText, axis: .vertical)
                    .lineLimit(25...)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.all)
                    .onChange(of: journalText) {
                        UserDefaults.standard.set(journalText, forKey: "journalEntry")

                    }

                Spacer()
            }
        }
    }
}


#Preview {
    Journal()
}//preview
