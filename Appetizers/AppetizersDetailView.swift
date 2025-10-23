//
//  AppetizersDetailView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI

struct AppetizersDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizers
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            AppetizersRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 225)
                
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .bold()
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40){
                    NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                    NutritionInfo(title: "Protein", value: "\(appetizer.protein)")
                    NutritionInfo(title: "Carbs", value: "\(appetizer.carbs)")
                }
            }
            Spacer()
            
            Button {
                order.addItem(appetizer)
                isShowingDetail = false
            }label: {
                //APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Cart")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Cart")
            }
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            xDissmisButton()
            
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizersDetailView(appetizer: MockData.sampleAppetizers, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
    
}
