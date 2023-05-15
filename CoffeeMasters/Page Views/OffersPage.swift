//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Abraham Esparza on 5/11/23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView {
            VStack {
                Offer(title: "New Member Savings",
                      description: "25% off")
                Offer(title: "Early Bird Savings",
                      description: "10% off")
            }.navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
