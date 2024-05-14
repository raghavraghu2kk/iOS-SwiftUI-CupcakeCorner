//
//  CheckoutView.swift
//  CupcakeCorner
//
//  Created by Raghavendra Mirajkar on 14/05/24.
//

import SwiftUI

struct CheckoutView: View {
    var order: Order
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                            image
                                .resizable()
                                .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 233)

                    Text("Your total is \(order.cost, format: .currency(code: "USD"))")
                        .font(.title)

                    Button("Place Order", action: { })
                        .padding()
                }
            }
            .navigationTitle("Check out")
            .navigationBarTitleDisplayMode(.inline)
            .scrollBounceBehavior(.basedOnSize)
        }
    }
}

#Preview {
    CheckoutView(order: Order())
}