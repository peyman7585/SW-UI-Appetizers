//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Peyman on 2/13/25.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.small)
                .foregroundColor(.black)
                .frame(width: 44, height: 44)
        }

    }
}

#Preview {
    XDismissButton()
}
