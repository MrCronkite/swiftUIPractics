

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
        var restorants: [Restaurant] = [
            .init(name: "First restaurant"),
            .init(name: "Second restaurant"),
            .init(name: "Third restaurant")
        ]
        
        NavigationView {
            List {
                Section(header: Text("Important tsks")) {
                    ForEach(restorants) { restorant in
                        RestaurantRow(restaurant: restorant)
                        RestaurantRow(restaurant: restorant)
                    }
                    .onDelete { restorants.remove(atOffsets: $0)}
                    .onMove { restorants.move(fromOffsets: $0, toOffset: $1)}
                }
            }
            .navigationTitle("Welcome")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Help") {
                        print("Help tapped!")
                    }
                }
            }
        }
    }
}

#Preview {
    ListContentView()
}
