//
//  CartView.swift
//  online_shop
//
//  Created by Kamil Kopik on 19/02/2025.
//

import Foundation
import SwiftUI

struct CartView: View {
    @State private var cartManager = CartManager()
    
    var body: some View {
        VStack {
            List(cartManager.cart) { product in
                HStack {
                    Text(product.name)
                    Spacer()
                    Text(String(format: "%.2f PLN", product.price))
                        .foregroundStyle(.gray)
                }
            }
            
            Text("Łączna kwota: \(String(format: "%.2f PLN", cartManager.totalPrice()))")
                .font(.title2)
                .bold()
                .padding()
            
            Spacer()
        }
        .navigationTitle("Koszyk")
    }
}
