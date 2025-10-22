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
                                             imageURL: "https://www.tiger-corporation.com/wp-content/uploads/2023/02/hero-img-recipe-spicy-tuna-3db6e125056f2bde01321a3da5d290da.jpg",
                                             description: "T2 kinds of delicious rolls with tuna, salmon, perfectly seasoned with Kikkoman kimchi sauce. Served with a side of steamed broccoli and a side of steamed rice.",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    
    static let appetizers = [sampleAppetizers, sampleAppetizers, sampleAppetizers, sampleAppetizers]
    
    static let sample1 = Appetizers(id: 1,
                                             name: "Test Appetizer",
                                             imageURL: "https://www.tiger-corporation.com/wp-content/uploads/2023/02/hero-img-recipe-spicy-tuna-3db6e125056f2bde01321a3da5d290da.jpg",
                                             description: "T2 kinds of delicious rolls with tuna, salmon, perfectly seasoned with Kikkoman kimchi sauce. Served with a side of steamed broccoli and a side of steamed rice.",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    static let sample2 = Appetizers(id: 2,
                                             name: "Test Appetizer 2",
                                             imageURL: "https://www.tiger-corporation.com/wp-content/uploads/2023/02/hero-img-recipe-spicy-tuna-3db6e125056f2bde01321a3da5d290da.jpg",
                                             description: "T2 kinds of delicious rolls with tuna, salmon, perfectly seasoned with Kikkoman kimchi sauce. Served with a side of steamed broccoli and a side of steamed rice.",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    static let sample3 = Appetizers(id: 3,
                                             name: "Spicy Tuna",
                                             imageURL: "https://www.tiger-corporation.com/wp-content/uploads/2023/02/hero-img-recipe-spicy-tuna-3db6e125056f2bde01321a3da5d290da.jpg",
                                             description: "T2 kinds of delicious rolls with tuna, salmon, perfectly seasoned with Kikkoman kimchi sauce. Served with a side of steamed broccoli and a side of steamed rice.",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    static let sample4 = Appetizers(id: 4,
                                             name: "Spicy Tuna",
                                             imageURL: "https://www.tiger-corporation.com/wp-content/uploads/2023/02/hero-img-recipe-spicy-tuna-3db6e125056f2bde01321a3da5d290da.jpg",
                                             description: "T2 kinds of delicious rolls with tuna, salmon, perfectly seasoned with Kikkoman kimchi sauce. Served with a side of steamed broccoli and a side of steamed rice.",
                                             price: 14.99,
                                             calories: 400,
                                             protein: 30,
                                             carbs: 20)
    
    static let appetizersOrder = [sample1, sample2, sample3, sample4]
}


