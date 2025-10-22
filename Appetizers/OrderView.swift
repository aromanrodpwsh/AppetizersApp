//
//  OrderView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizersOrder
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List {
                        ForEach(orderItems){ appetizer in AppetizersListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty{
                    EmptyState()
                }
            }.navigationTitle("🧾 Orders")
            
        }
    }
    
    func deleteItems(at offesets: IndexSet) {
        orderItems.remove(atOffsets: offesets)
    }
}

#Preview {
    OrderView()
}
