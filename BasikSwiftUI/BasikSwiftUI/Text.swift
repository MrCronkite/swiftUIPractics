

import SwiftUI

struct TextContentView: View {
    var body: some View {
        Text("Let's style oyt text vuews with fonts, color and line slacing")
            .tracking(5)
            .lineLimit(3)
            .padding(10)
            .minimumScaleFactor(0.5)
            .truncationMode(.middle)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .background(Color.gray)
            .foregroundColor(.green)
            .lineSpacing(50)
    }
}

#Preview {
    TextContentView()
}
