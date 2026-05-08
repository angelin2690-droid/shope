//
//  ProductCard.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//

import SwiftUI

struct ProductCard: View {
    var product: product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment:.bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment:.leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("$\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                
            }
            .frame(width: 170, height: 250)
            .shadow(radius: 3)
            
            Button {
                print("Added to Card!")
            } label: {
                Image(systemName: "plus.circle.fill")
                    .padding(8)
            }
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
}
