

import SwiftUI

struct TogleContentView: View {
    
    @State private var showHello = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $showHello) {
               Text("SHow Hello")
            }
            .padding()
            
            Button(action: {
                // Your action here
                self.showHello.toggle()
            }, label: {
                HStack(alignment: .center) {
                    Image(systemName: "circle.fill")
                        .padding(EdgeInsets(top: 15, leading: 60, bottom: 15, trailing: 0))
                    Text("Button")
                        .padding(EdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 60))
                        .foregroundColor(.white)
                }
            })
            .background(Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            
            if showHello {
                Text("hello")
                    .padding()
            }
        }
    }
}

#Preview {
    TogleContentView()
}
