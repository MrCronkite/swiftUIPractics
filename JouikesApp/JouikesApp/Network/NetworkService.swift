

import Foundation

class NetworkService {
    func getRandomJoke() async throws -> String {
       let (data, _) = try await URLSession.shared.data(from: URL(string: "https://api.chucknorris.io/jokes/random")!)
       let jsonObject = try JSONSerialization.jsonObject(with: data) as? [String: Any]
       return jsonObject?["value"] as? String ?? "-"
    }
}
