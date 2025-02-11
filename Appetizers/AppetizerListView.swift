//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    var body: some View {
        NavigationView{
            List(viewModel.appetizers){ appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear(){
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton:alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
