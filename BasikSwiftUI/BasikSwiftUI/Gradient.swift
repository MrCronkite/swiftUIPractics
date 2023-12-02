

import SwiftUI

struct GradientContentView: View {
    var body: some View {
        let colors = Gradient(colors: [.red, .green, .black])
        let gradient = RadialGradient(gradient: colors,
                                      center: .center, startRadius: 50, endRadius: 200)
        
        Text("Hello World")
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.red, .yellow]),
                                       startPoint: .leading,
                                       endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
        
        return Circle()
            .fill(gradient)
            
    }
}

#Preview {
    GradientContentView()
}
