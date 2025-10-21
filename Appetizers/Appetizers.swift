//
//  ContentView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import Foundation

struct Appetizers: Decodable,Identifiable {
    let id: Int
    let name: String
    let imageURL: String
    let description: String
    let price: Double
    let calories: Int
    let protein: Double
    let carbs: Double
}

struct AppetizersResponse: Decodable {
    let request: [Appetizers]
}

struct MockData {
    static let sampleAppetizers = Appetizers(id: 1,
                                             name: "Spicy Tuna",
                                             imageURL: "https://thehealthyfoodie.com/wp-content/uploads/2017/01/Spicy-Tuna-Poke-Bowl-9.jpg",
                                             description: "Tuna with a kick",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    
    static let appetizers = [sampleAppetizers, sampleAppetizers, sampleAppetizers, sampleAppetizers]
}


