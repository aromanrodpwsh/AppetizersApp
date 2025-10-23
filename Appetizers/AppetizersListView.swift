//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct AppetizersListView: View {
    
    @StateObject var viewModel = AppetizersListViewModel()
    @State private var isShowingDetail: Bool = false
    @State private var selectedAppetizier: Appetizers?
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers) { appetizer in
                    AppetizersListCell(appetizer: appetizer)
                        //.listRowSeparatorTint(.gray)
                        .contentShape(Rectangle()) // ensure whole row is tappable
                        .onTapGesture {
                            selectedAppetizier = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🥙 Appetizers")
                .listStyle(.plain)
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if let selected = selectedAppetizier, isShowingDetail {
                AppetizersDetailView(appetizer: selected, isShowingDetail: $isShowingDetail)
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
