//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetails = false
    @State private var selectedAppetizer: Appetizer?
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetails = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetails)
            }
            .onAppear(){
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetails ? 20 : 0)
            if isShowingDetails {
                AppetizerDetailView(appetizer: selectedAppetizer!,
                                    isShowingDetails: $isShowingDetails)
                    
            }
            if viewModel.isLoading {
                LoadingView()
            }
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
