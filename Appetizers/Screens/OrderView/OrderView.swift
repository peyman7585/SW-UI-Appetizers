//
//  OrderView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("orders")
                    } label: {
                        APButton(title: "$9.99 - place order")
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
    
    func deleteItem(at offsets: IndexSet){
        order.items.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
