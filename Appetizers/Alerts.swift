//
//  Alerts.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI

struct AlertsItem: Identifiable {
    var id: UUID = UUID()
    var title: String
    var message: String
    var dismissButtonText: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertsItem(title: "Server Error",
                                     message: "the data received from the server was invalid. Please contact support",
                                     dismissButtonText: .default(Text("OK")))
    
    static let invalidResponse  = AlertsItem(title: "Server Error",
                                     message: "Invalid response from the server. Please try again.",
                                     dismissButtonText: .default(Text("OK")))
    
    static let invalidURL       = AlertsItem(title: "Server Error",
                                      message: "There was an issue connecting to the server. If this persist, please contact support",
                                      dismissButtonText: .default(Text("OK")))
    
    static let unableToComplete = AlertsItem(title: "Server Error",
                                      message: "Unable to complete your request at this time. Please check your internet connection and try again.",
                                      dismissButtonText: .default(Text("OK")))
}
