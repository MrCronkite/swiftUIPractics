

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("apple")
            VStack(alignment: .center, spacing: 10) {
                Text("Hello World")
                    .padding(40)
                Spacer()
                    .frame(height: 10)
                Text("Hello Vlad")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
