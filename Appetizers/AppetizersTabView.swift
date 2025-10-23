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
                .tabItem { Label("Home",systemImage: "house")}
            AccountView()
                .tabItem {Label("Account",systemImage: "person")}
            OrderView()
                .tabItem {Label("Orders",systemImage: "bag")}
                .badge(order.Items.count)
        }.accentColor(.ColorbrandPrimary)
    }
}

#Preview {
    AppetizersTabView()
}
