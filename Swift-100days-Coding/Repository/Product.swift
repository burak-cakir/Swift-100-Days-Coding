//
//  Product.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 28.12.2021.
//

import Foundation

struct Product {
    var id = UUID()
    var productName : String
    var productDescription : String
    var productunitInStok : Int
    var productprice : Int = 0
    var productisActive : Bool = true
    var productcategory : productCategory = productCategory(categoryname: "...", categortDescription: "...")
}

