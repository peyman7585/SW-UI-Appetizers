//
//  Order.swift
//  Appetizers
//
//  Created by Peyman on 3/1/25.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer ){
        items.append(appetizer)
    }
}
