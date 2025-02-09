//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
                .navigationTitle("🍟 Appetizers")
        }
       
    }
}

#Preview {
    AppetizerListView()
}
