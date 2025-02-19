//
//  ProductListView.swift
//  online_shop
//
//  Created by Kamil Kopik on 19/02/2025.
//

import Foundation
import SwiftUI

struct ProductListView: View {
    @State private var store = ProductStore()
    
    var body: some View {
        NavigationStack {
            List(store.products) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.headline)
                            Text(String(format: "%.2f PLN", product.price))
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .navigationTitle("Sklep Online")
        }
    }
}
