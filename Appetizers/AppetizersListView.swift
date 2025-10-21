//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizersListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizersListCell(appetizer: appetizer)
                }
                .navigationTitle("🥙 Appetizers")
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: Text(alertItem.title),
                  message: Text(alertItem.message),
                  dismissButton: alertItem.dismissButtonText)
        }
    }
    
}

#Preview {
    AppetizersListView()
}
