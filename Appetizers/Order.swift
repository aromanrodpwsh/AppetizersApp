//
//  Order.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 22/10/25.
//

import SwiftUI
import Combine

final class Order: ObservableObject {
    @Published var Items: [Appetizers] = []
    
    func addItem(_ item: Appetizers) {
        Items.append(item)
    }
    
    func deleteItems(at offesets: IndexSet) {
        Items.remove(atOffsets: offesets)
    }
}
