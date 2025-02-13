//
//  APButton.swift
//  Appetizers
//
//  Created by Peyman on 2/13/25.
//

import SwiftUI

struct APButton: View {
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandprimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "test button")
}
