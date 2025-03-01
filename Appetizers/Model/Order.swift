//
//  Order.swift
//  Appetizers
//
//  Created by Peyman on 3/1/25.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer ){
        items.append(appetizer)
    }
    
    func deleteItem(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }

    
}
