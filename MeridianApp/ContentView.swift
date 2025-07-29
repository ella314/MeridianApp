import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
                .fontWeight(.bold)

            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.systemRed).opacity(0.7))
                .frame(height: 100)
                .overlay(
                    Text("quote")
                        .font(.title)
                        .foregroundColor(.black)
                )

            RoundedRectangle(cornerRadius: 25)
                .fill(Color(.systemRed).opacity(0.7))
                .frame(height: 300)
                .overlay(
                    Text("Reminders")
                        .font(.title)
                        .foregroundColor(.black)
                )

            Spacer()
        }
        .padding()
        .background(Color(.lightGray))
    }
}

#Preview {
    HomeView()
}

