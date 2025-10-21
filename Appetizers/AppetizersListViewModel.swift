//
//  AppetizersListViewModel.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI
import Combine

final class AppetizersListViewModel: ObservableObject {
    @Published var appetizers: [Appetizers] = []
    @Published var alertItem: AlertsItem?
    @Published var isLoading: Bool = false
    
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.fetchData { [self] result in
            DispatchQueue.main.async{
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }

                }
            }
        }
    }
}
