//
//  E-Commer-item.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import Foundation

struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var subTitle: String
    var price: String
    var rating : String
    var image: String
    var bimage : String
    
}

var items = [
    Item(title: "Vincent Chaes", subTitle: "Black Full Rim", price: "$36", rating: "3.8", image: "images",bimage: "p1"),
    Item(title: "John Jacobs", subTitle: "Brown Torties", price: "$45", rating: "4.9", image: "images2",bimage: "p2"),
    Item(title: "Wood Black", subTitle: "Office Glass", price: "$84", rating: "4.2", image: "images3",bimage: "p3"),
    Item(title: "Vu Abstact", subTitle: "Fashion U", price: "$65", rating: "3.5", image: "images4",bimage: "p4"),
    Item(title: "Adsdad ASDASd", subTitle: "Black Full Rim", price: "$33", rating: "3.8", image: "images",bimage: "p5"),
    Item(title: "John Jacobs", subTitle: "Brown Torties", price: "$45", rating: "4.9", image: "images2",bimage: "p6"),
    Item(title: "Wood Black", subTitle: "Office Glass", price: "$84", rating: "4.2", image: "images3",bimage: "p7"),
    Item(title: "Vu Abstact", subTitle: "Fashion U", price: "$65", rating: "3.5", image: "images4",bimage: "p8")
]
