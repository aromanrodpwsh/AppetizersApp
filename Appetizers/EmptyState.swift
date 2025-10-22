//
//  EmptyState.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 22/10/25.
//

import SwiftUI

struct EmptyState: View {
    
    
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
                Text("No hay pedidos")
                    .font(.largeTitle)
                    .foregroundColor(.secondary)
                
            }
        }
    }
}

#Preview {
    EmptyState()
}
