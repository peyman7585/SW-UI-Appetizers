//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
