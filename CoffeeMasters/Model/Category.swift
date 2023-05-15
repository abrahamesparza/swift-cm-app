//
//  Category.swift
//  CoffeeMasters
//
//  Created by Abraham Esparza on 5/14/23.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
