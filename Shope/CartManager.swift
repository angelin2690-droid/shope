//
//  CardManager.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//
import Foundation
internal import Combine

class CartManager: ObservableObject {
    
    @Published private(set) var products: [product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: product) {
        products.removeAll(where: { $0.id == product.id })
        total -= product.price
    }
    
    
    
    
    
}

