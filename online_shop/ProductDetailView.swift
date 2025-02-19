//
//  ProductDetailView.swift
//  online_shop
//
//  Created by Kamil Kopik on 19/02/2025.
//

import Foundation
import SwiftUI

struct ProductDetailView: View {
    var product: Product
    @State private var cartManager = CartManager()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(product.name)
                .font(.largeTitle)
                .bold()
            
            Text(String(format: "%.2f PLN", product.price))
                .font(.title2)
                .foregroundStyle(.green)
            
            Text(product.description)
                .padding()
            
            Button("Dodaj do koszyka") {
                cartManager.addToCart(product)
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Szczegóły")
    }
}

