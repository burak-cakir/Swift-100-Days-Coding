//
//  OrderManager.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 5.01.2022.
//

import Foundation

struct OrderModel : Codable, Identifiable {
    var id : Int = 0
    var shipName : String = ""
   var shipAdress : ShipAddress?
}
struct ShipAddress: Codable{
    var street : String
    var city : String
}
