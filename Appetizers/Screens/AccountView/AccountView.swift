//
//  AccountView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct AccountView: View {
   
    @StateObject  var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.LastName)
                    TextField("Email", text: $viewModel.Email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.Birthdate, displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refill", isOn: $viewModel.frequentRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandprimary))
               
            }
           
                .navigationTitle("👤 Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
