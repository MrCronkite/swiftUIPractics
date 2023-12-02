

import SwiftUI

struct TogleContentView: View {
    
    @State private var showHello = true
    @State private var text = ""
    @State private var password = ""
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Enter password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Toggle(isOn: $showHello) {
                Text("SHow Hello")
            }
            .padding()
            
            Button(action: {
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
                Text("hello \(text)")
                    .padding()
            }
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...1, step: 0.02)
                .padding()
            
            Text("Slider Value: \(sliderValue)")
                .padding()
            
        }
    }
}

#Preview {
    TogleContentView()
}
