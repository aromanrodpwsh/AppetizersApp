//
//  AppetizersListCell.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 20/10/25.
//

import SwiftUI

struct AppetizersListCell: View {
    
    let appetizer: Appetizers
    var body: some View {
        HStack{
            AppetizersRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 120,height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(Color(.secondaryLabel))
                    .fontWeight(.semibold)
            }
        }.padding(.leading)
    }
}

#Preview {
    AppetizersListCell(appetizer: MockData.sampleAppetizers)
}
