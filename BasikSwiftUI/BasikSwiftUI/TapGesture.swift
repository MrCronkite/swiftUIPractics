

import SwiftUI

struct TapGestureContentView: View {
    var body: some View {
        VStack {
            Image("apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .gesture(
                  LongPressGesture(minimumDuration: 2)
                    .onEnded({ _ in
                        print("Pressed")
                    })
                )
            
            Spacer()
            Text("Apple")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("helllo")
        }
    }
}

#Preview {
    TapGestureContentView()
}
