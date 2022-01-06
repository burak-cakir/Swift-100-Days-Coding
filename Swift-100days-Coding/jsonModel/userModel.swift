

import Foundation

struct userModel: Codable, Identifiable {
    var id : Int = 0
    var name : String = ""
    var username : String = ""
    var email : String = ""
    var address : Address?
    var phone : String = ""
    var website : String = ""
    var company : Company?
}

struct Company: Codable {
    var name : String = ""
    var catchPhrase : String = ""
    var bs : String = ""
}
    
struct Address : Codable {
    var street : String = ""
    var suite : String = ""
    var city : String = ""
    var zipcode : String = ""
    var geo : Geo?
}

struct Geo :Codable {
    var lat : String = ""
    var lng : String = ""
}




