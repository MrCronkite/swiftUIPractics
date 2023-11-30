

import SwiftUI

class JokeViewModel: ObservableObject {
    @Published var jokeText = "..."
    
    @Published var savedJokes: [String] = []
    
    @Published var isJokeExists = false
    @Published var isDownloading = false
    
    init() {
        load()
        downloadJoke()
    }
    
    func downloadJoke() {
        Task {
            isDownloading = true
            jokeText = try await NetworkService().getRandomJoke()
            isDownloading = false
            checkJokeExist()
        }
    }
    
    func saveJokes() {
        savedJokes.append(jokeText)
        checkJokeExist()
        save()
    }
    
    func removeJoke() {
        savedJokes = []
        checkJokeExist()
        save()
    }
    
    func removeJokes(at indexSet: IndexSet) {
        savedJokes.remove(atOffsets: indexSet)
        checkJokeExist()
        save()
    }
    
    private func checkJokeExist() {
        isJokeExists = savedJokes.firstIndex(where: { $0 == jokeText }) != nil
    }
    
    private func save() {
        UserDefaults.standard.setValue(savedJokes, forKey: "jokes")
    }
    
    private func load() {
       savedJokes = UserDefaults.standard.array(forKey: "jokes") as? [String] ?? []
    }
}
