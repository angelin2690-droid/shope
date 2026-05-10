//
//  CardView.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cartmanager: CartManager
    var body: some View {
        ScrollView {
            if cartmanager.products.count > 0 {
                ForEach(cartmanager.products, id: \.id) {
                    product in productRow(product: product)
                }
                HStack {
                    Spacer()
                    Text("Total: \(cartmanager.total)")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
                
            } else{
                Text("Your cart is empty")
            }
            
        }
        .navigationBarTitle("My Cart")
        .padding(.top, 10)
    }
}

#Preview {
    CardView()
        .environmentObject(CartManager())
}
