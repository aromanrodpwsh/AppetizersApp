//
//  AccountView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocapitalization(.words)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .autocapitalization(.words)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(false)
                    TextField("Cellphone", text: $viewModel.user.phone)
                        .keyboardType(.namePhonePad)
                        .autocapitalization(.none)
                        .disableAutocorrection(false)
                    DatePicker("Birthday", selection: $viewModel.user.birthday,displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Preferences")){
                    Toggle("Subscribe to our newsletter", isOn: $viewModel.user.newsletter)
                    Toggle("Receive exclusive offers", isOn: $viewModel.user.offers)
                }
            }
                .navigationTitle("🧛‍♂️ Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem ) { alertItem in
            Alert(title: Text(alertItem.title),
                  message: Text(alertItem.message),
                  dismissButton: alertItem.dismissButtonText)
        }
    }
}

#Preview {
    AccountView()
}
