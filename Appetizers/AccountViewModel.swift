//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI
import Combine

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var alertItem: AlertsItem?
    @Published var user = User()
    
    func saveChanges(){
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty && !user.phone.isEmpty else {
            alertItem = AlertContext.emptyField
            return false
        }
        guard user.email.isValidEmail else {
            alertItem = AlertContext.emailInvalid
            return false
        }
        return true
    }
    
    
}

