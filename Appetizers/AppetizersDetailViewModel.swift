//
//  AppetizersDetailView.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI

struct AppetizersDetailView: View {
    
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
                    VStack(spacing: 5){
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5){
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.protein, specifier: "%.f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    VStack(spacing: 5){
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        
                        Text("\(appetizer.carbs, specifier: "%.f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    
                }
            }
            Spacer()
            
            Button {
                
            }label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Cart")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            ZStack{
                Circle()
                    .frame(width: 30,height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 40,height: 40)
                    .foregroundColor(.black)
            }
            
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizersDetailView(appetizer: MockData.sampleAppetizers, isShowingDetail: .constant(true))
}
