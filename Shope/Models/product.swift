//
//  product.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//

import Foundation

struct product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [product(name: "White",image: "s0",price: 499),
                   product(name: "blue",image: "s1",price: 1449),
                   product(name: "dark green",image: "s2",price: 2799),
                   product(name: "green",image: "s3",price: 749),
                   product(name: "green",image: "s4",price: 489),
                   product(name: "green",image: "s5",price: 599),
                   product(name: "purple",image: "s7",price: 689),
                   product(name: "white",image: "s8",price: 729),
                   product(name: "gray",image: "s9",price: 563),
                   product(name: "White",image: "s10",price: 637),
                   product(name: "creamy",image: "s11",price: 266),
                   product(name: "golden",image: "s12",price: 827),
                   product(name: "wooden",image: "s13",price: 263)]
