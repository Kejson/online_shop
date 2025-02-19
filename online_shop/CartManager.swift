//
//  CartManager.swift
//  online_shop
//
//  Created by Kamil Kopik on 19/02/2025.
//

import Foundation
import SwiftUI

@Observable
class CartManager {
    var cart: [Product] = []
    
    func addToCart(_ product: Product) {
        cart.append(product)
    }
    
    func totalPrice() -> Double {
        return cart.reduce(0) { $0 + $1.price }
    }
}
