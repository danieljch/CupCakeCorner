//
//  ContentView.swift
//  CupCakeCorner
//
//  Created by Daniel Jesus Callisaya Hidalgo on 22/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Bolivia_admin_2019.svg/300px-Bolivia_admin_2019.svg.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
