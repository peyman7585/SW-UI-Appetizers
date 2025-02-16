//
//  User.swift
//  Appetizers
//
//  Created by Peyman on 2/16/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var LastName = ""
    var Email = ""
    var Birthdate = Date()
    var extraNapkins = false
    var frequentRefill = false
}
