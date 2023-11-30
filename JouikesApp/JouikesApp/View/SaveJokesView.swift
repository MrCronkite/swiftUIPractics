

import SwiftUI

struct SaveJokesView: View {
    @StateObject var viewModel: JokeViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.savedJokes, id: \.self) { joke in
                Text(joke)
            }
            .onDelete { indexSet in
                viewModel.removeJokes(at: indexSet)
            }
        }
    }
}
