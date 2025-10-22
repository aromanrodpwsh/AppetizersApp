//
//  xDissmisButton.swift
//  Appetizers
//
//  Created by Armando Alberto Roman Rodriguez on 21/10/25.
//

import SwiftUI

struct xDissmisButton: View {
    var body: some View {
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
    }
}

#Preview {
    xDissmisButton()
}
