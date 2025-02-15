//
//  Alert.swift
//  Appetizers
//
//  Created by Peyman on 2/11/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
    
    struct AlertContext {
        static let invalidData      = AlertItem(title: Text("Server Error"),
                                                message: Text("The data recevied from the serve was invalid. Please contact support"),
                                                dismissButton: .default(Text("OK")))
        static let invalidResponse       = AlertItem(title: Text("Server Error"),
                                                message: Text("Invalid response from the server. please try again later or contact to support"),
                                                dismissButton: .default(Text("OK")))
        static let invalidURL  = AlertItem(title: Text("Server Error"),
                                                message: Text("There was an issue connecting to the server. If this persists. Please contact support"),
                                                dismissButton: .default(Text("OK")))
        static let unableToComplete = AlertItem(title: Text("Server Error"),
                                                message: Text("Unable to complete your request at this time. Please check your internet connection"),
                                                dismissButton: .default(Text("OK")))
        
        
        
        static let invalidForm = AlertItem(title: Text("invalid Form"),
                                                message: Text("Please ensure all fields in the form have been filled out"),
                                                dismissButton: .default(Text("OK")))
        static let invalidEmail = AlertItem(title: Text("invalid Email"),
                                                message: Text("Please ensure your email is correct"),
                                                dismissButton: .default(Text("OK")))
    
}
