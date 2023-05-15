//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Abraham Esparza on 5/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var name = "" //@State is similar to React's state updating
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            CartPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("My Order")
                }
                .badge(cartManager.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}
