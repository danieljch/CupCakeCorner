//
//  ContentView.swift
//  CupCakeCorner
//
//  Created by Daniel Jesus Callisaya Hidalgo on 22/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}
enum CodingKeys: CodingKey {
    case name
}
class User: ObservableObject, Codable {
    @Published var name = "Paul Hudson"
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
