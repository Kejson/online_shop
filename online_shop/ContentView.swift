//
//  ContentView.swift
//  online_shop
//
//  Created by Kamil Kopik on 17/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProductListView()
                .tabItem {
                    Label("Sklep", systemImage: "cart")
                }
            
            CartView()
                .tabItem {
                    Label("Koszyk", systemImage: "bag")
                }
        }
    }
}


#Preview {
    ContentView()
}
