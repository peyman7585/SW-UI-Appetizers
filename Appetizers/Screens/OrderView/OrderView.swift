//
//  OrderView.swift
//  Appetizers
//
//  Created by Peyman on 2/8/25.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItem
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(orderItems){ appetizer in
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
            .navigationTitle("🚚 Orders")
        }
        
    }
    
    func deleteItem(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
