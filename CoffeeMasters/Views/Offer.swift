//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Abraham Esparza on 5/11/23.
//

import SwiftUI

struct Offer: View {
    var title: String = ""
    var description: String = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 250)
                .clipped()
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "Early Bird",
              description: "20% off")
        .previewLayout(.fixed(width: 350, height: 500))
        .preferredColorScheme(.light)
        
    }
}
