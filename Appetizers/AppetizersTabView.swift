//
//  AppetizersTabView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct AppetizersTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizersListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Orders", systemImage: "bag") }
                .badge(order.items.count)
        }
        .accentColor(.ColorbrandPrimary)
    }
}

#Preview {
    let order = Order()
    // Optional: seed the order for preview badge
    order.addItem(MockData.sampleAppetizers)
    return AppetizersTabView()
        .environmentObject(order)
}
