//
//  EmptyState.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 22/10/25.
//

import SwiftUI

struct EmptyState: View {
    
    var emptyOrderText: String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("empty-order")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                Text(emptyOrderText)
                    .font(.callout.bold())
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyState(emptyOrderText: "Test text")
}
