//
//  AccountView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var LastName = ""
    @State private var Email = ""
    @State private var Birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefill = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $LastName)
                    TextField("Email", text: $Email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $Birthdate, displayedComponents: .date)
                    
                    Button{
                        print("save")
                    }label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refill", isOn: $frequentRefill)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandprimary))
               
            }
           
                .navigationTitle("👤 Account")
        }
    
    }
}

#Preview {
    AccountView()
}
