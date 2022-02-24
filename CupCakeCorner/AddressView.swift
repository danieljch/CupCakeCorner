//
//  AddressView.swift
//  CupCakeCorner
//
//  Created by Daniel Jesus Callisaya Hidalgo on 23/2/22.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("zip", text: $order.zip)
                
            }
            Section {
                NavigationLink {
                    CheckoutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
