//
//  CartItem.swift
//  CoffeeMasters
//
//  Created by Abraham Esparza on 5/15/23.
//

import SwiftUI

struct CartItem: View {
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.caption)
                .padding()
                .foregroundColor(Color("Secondary"))
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

struct CartItem_Previews: PreviewProvider {
    static var previews: some View {
        CartItem(item: (Product(id: 1, name: "test", description: "", price: 1.25, image: " "), 2))
            .padding()
    }
}
