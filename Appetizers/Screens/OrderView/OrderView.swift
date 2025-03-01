//
//  OrderView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    @State private var orderItems = MockData.orderItem
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("orders")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - place order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nplease add an appetizer")
                  }

            }
            .navigationTitle("🚚 Orders")
        }
        
    }
}

#Preview {
    OrderView()
}
