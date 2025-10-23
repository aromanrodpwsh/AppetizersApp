//  APButton.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//
import SwiftUI

struct APButton: View {
    let title : LocalizedStringResource
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            //.frame(width: 260, height: 50)
    }
}
#Preview {
    APButton(title: "Test button")
}
