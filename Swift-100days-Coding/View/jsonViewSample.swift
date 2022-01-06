//
//  jsonViewSample.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 6.01.2022.
//

import SwiftUI

struct jsonViewSample: View {
    
    
    @ObservedObject var json = jsonRepository()
    
    
    var body: some View {
        

        List(json.getAll()){ user in
            Text(String(user.id) + "-" + user.name)
            }
        Text("test")
    }
}
struct jsonViewSample_Previews: PreviewProvider {
    static var previews: some View {
        jsonViewSample()
    }
}
