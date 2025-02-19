//
//  Product_Model.swift
//  online_shop
//
//  Created by Kamil Kopik on 17/02/2025.
//

import Foundation
import SwiftUI

//test modelu

@Observable
class Product: Identifiable{
    // te dane sie nie zmieniaja to let zamiast var
    let id = UUID()
    let name: String
    let price: Double
    let description: String
    var quantityInCart: Int = 0
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
}

@Observable
class ProductStore {
    var products: [Product] = [
        Product(name: "Iphone 13 Pro", price: 3500.99, description: "smartphone Apple"),
        Product(name: "Apple Watch", price: 2500.66, description: "apple watch"),
        Product(name: "Macbook Po", price: 6500, description: "Macbook Pro 2022")
   ]
}
