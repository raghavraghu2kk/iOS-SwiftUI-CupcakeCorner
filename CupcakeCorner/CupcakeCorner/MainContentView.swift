//
//  MainContentView.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct MainContentView: View {
    @State private var order = Order()
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Picker("Select your cake type", selection: $order.type) {
                        ForEach(Order.types.indices, id: \.self) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.quantity)", value: $order.quantity, in: 3...20)
                }
                
                Section {
                    Toggle("Any special requests?" , isOn: $order.specialRequestEnabled.animation())

                }
                
                Section {
                    if order.specialRequestEnabled {
                        Toggle("Add extra frostings", isOn: $order.extraFrosting)
                        
                        Toggle("Add extra sprinkles", isOn: $order.addSprinkles)
                    }
                }
                
                Section {
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery Details")
                    }
                }
            }
            .navigationBarTitle("Cupcake Corner")
        }
    }
}

#Preview {
    MainContentView()
}
