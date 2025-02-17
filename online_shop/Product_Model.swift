//
//  Product_Model.swift
//  online_shop
//
//  Created by Kamil Kopik on 17/02/2025.
//

import Foundation
import SwiftUI


class Product: Identifiable{
    var id = UUID();
    var name:  String = ""
    var price: Double = 0.0
    var description: String = ""
    var quaintityInCart: Int = 0
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
}
