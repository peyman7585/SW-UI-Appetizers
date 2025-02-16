//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Peyman on 2/15/25.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges(){
        guard isValidForm else { return }
       
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        }catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.invalidUserData
        }
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty, !user.LastName.isEmpty, !user.Email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.Email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    

}
