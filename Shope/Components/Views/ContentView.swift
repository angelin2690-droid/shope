//
//  ContentView.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//

import SwiftUI

struct ContentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(productList, id: \.id){product in ProductCard(product: product)}
                }
                .padding()
            }
            .navigationTitle("Shope")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    //hello
}

#Preview {
    ContentView()
}
