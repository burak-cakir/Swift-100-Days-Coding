//
//  PersonInfo.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 4.01.2022.
//

import Foundation

struct Person : Codable , Identifiable {
    var id = UUID().uuidString
    var name: String = "Burak"
    var surname: String = "Çakır"
    var contact: [Contact] = [Contact]()
    var school: [School] = [School]()
    var experience : [Experience] = [Experience]()
    var hobby: [String] = [""]
}

struct School : Codable {
    var id = UUID().uuidString
    var schoolname : String = ""
    var department : String = ""
    var start : String = ""
    var end : String = ""
}
struct Experience : Codable {
    var id = UUID().uuidString
    var experiencename : String = ""
    var department : String = ""
    var start : String = ""
    var end : String = ""
}

struct Contact : Codable {
    var id = UUID().uuidString
    var contactname : String = "Phone"
    var adress : String = "05350366409"
  
}





