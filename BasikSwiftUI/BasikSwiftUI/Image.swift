

import SwiftUI

struct ImageContentView: View {
    var body: some View {
        ZStack {
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .center) {
                Spacer()
                Image(systemName: "cloud.sun.fill")
                    .clipShape(Circle())
                    .padding(.bottom ,50)
                    .background(Color.yellow)
                    .font(.largeTitle)
                    .foregroundColor(.red)
            }
        }
    }
}

#Preview {
    ImageContentView()
}
