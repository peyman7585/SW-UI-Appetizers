//
//  Appetizer.swift
//  Appetizers
//
//  Created by Peyman on 2/9/25.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let imageURL: String
    let price: Double
    let calories: Int
    let protein: Int
    let carbs: Int
    
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetzer = Appetizer(id: 99,
                                          name: "yummy yum",
                                          description: "this is test for appetizer",
                                          imageURL: "",
                                          price: 18.89,
                                          calories: 22,
                                          protein: 34,
                                          carbs: 1232)
    
    static let appetizers = [sampleAppetzer,sampleAppetzer,sampleAppetzer,sampleAppetzer]
    
    static let orderItemOne = Appetizer(id: 90,
                                          name: "yummy yum One",
                                          description: "this is test for appetizer",
                                          imageURL: "",
                                          price: 18.89,
                                          calories: 22,
                                          protein: 34,
                                          carbs: 1232)
    static let orderItemTwo = Appetizer(id: 91,
                                          name: "yummy yum two",
                                          description: "this is test for appetizer",
                                          imageURL: "",
                                          price: 18.89,
                                          calories: 22,
                                          protein: 34,
                                          carbs: 1232)
    static let orderItemThree = Appetizer(id: 92,
                                          name: "yummy yum three",
                                          description: "this is test for appetizer",
                                          imageURL: "",
                                          price: 18.89,
                                          calories: 22,
                                          protein: 34,
                                          carbs: 1232)
    
    static let orderItem = [orderItemOne,orderItemTwo,orderItemThree]
}
