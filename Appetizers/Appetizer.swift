//
//  Appetizer.swift
//  Appetizers
//
//  Created by Peyman on 2/9/25.
//

import Foundation

struct Appetizer: Codable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse{
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetzer = Appetizer(id: 99,
                                          name: "yummy yum",
                                          description: "this is test for appetizer",
                                          imageURL: "",
                                          price: 11,
                                          calories: 22,
                                          protein: 34,
                                          carbs: 1232)
    
    static let appetizers = [sampleAppetzer,sampleAppetzer,sampleAppetzer,sampleAppetzer]
}
