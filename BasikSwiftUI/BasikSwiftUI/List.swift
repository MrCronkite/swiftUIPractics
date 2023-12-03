

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}

struct ListContentView: View {
    var body: some View {
        let restorants: [Restaurant] = [
            .init(name: "First restaurant"),
            .init(name: "Second restaurant"),
            .init(name: "Third restaurant")
        ]
        
        List(restorants) { rest in
            Section(header: Text("Important tsks")) {
                RestaurantRow(restaurant: rest)
                RestaurantRow(restaurant: rest)
            }
        }
    }
}

#Preview {
    ListContentView()
}
