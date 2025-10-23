//
//  OrderView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List {
                        ForEach(order.items){ appetizer in AppetizersListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .buttonStyle(.glassProminent)
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty{
                    EmptyState(emptyOrderText: "You have no items in your order. \nPlease add your appetizers \nto place an order.❤️")
                }
            }.navigationTitle("🧾 Orders")
            
        }
    }
}
