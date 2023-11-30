

import SwiftUI

struct JokeView: View {
    @StateObject var viewModel: JokeViewModel
    
    var body: some View {
        NavigationStack {
            Text(viewModel.jokeText)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        if viewModel.isDownloading {
                            ProgressView()
                        } else {
                            Button("Refresh") {
                                viewModel.downloadJoke()
                            }
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        if viewModel.isJokeExists {
                            Button {
                                viewModel.removeJoke()
                            } label: {
                                 Image(systemName: "star.fill")
                            }
                        } else {
                            Button {
                                viewModel.saveJokes()
                            } label: {
                                Image(systemName: "star")
                            }
                        }
                    }
                }
        }
    }
}

