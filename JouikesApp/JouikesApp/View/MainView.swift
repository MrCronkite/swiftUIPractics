

import SwiftUI

struct MainView: View {
    var viewModel: JokeViewModel = JokeViewModel()
    
    var body: some View {
        TabView {
            JokeView(viewModel: viewModel)
                .tabItem {
                    Label("Random joke", systemImage: "person.circle")
                }
            SaveJokesView(viewModel: viewModel)
                .tabItem {
                    Label("Saved joke", systemImage: "list.dash")
                }
        }
    }
}


#Preview {
    MainView()
}
