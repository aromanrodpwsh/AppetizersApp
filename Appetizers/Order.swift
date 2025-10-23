//
//  Order.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 22/10/25.
//

import SwiftUI
import Combine

final class Order: ObservableObject {
    @Published var items: [Appetizers] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func addItem(_ item: Appetizers) {
        items.append(item)
    }
    
    func deleteItems(at offesets: IndexSet) {
        items.remove(atOffsets: offesets)
    }
}
