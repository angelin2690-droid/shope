//
//  CardButton.swift
//  Shope
//
//  Created by Nalin on 08/05/26.
//

import SwiftUI

struct CardButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
            }
        }
    }
}

#Preview {
    CardButton(numberOfProducts: 1)
}
