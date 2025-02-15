//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Peyman on 2/15/25.
//

import Foundation

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var LastName = ""
    @Published var Email = ""
    @Published var Birthdate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefill = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty, !LastName.isEmpty, !Email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard Email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges(){
        guard isValidForm else { return }
        
        print("Changes have been saved successfully")
    }
}
