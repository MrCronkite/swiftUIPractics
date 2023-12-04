

import SwiftUI

struct AlertContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            self.showingAlert = true
        } .alert(isPresented: $showingAlert) {
            Alert(title: Text("Hello SwiftUI"), message: Text("Some"),
                  dismissButton: .default(Text("OK")))
        }
    }
}

#Preview {
    AlertContentView()
}

