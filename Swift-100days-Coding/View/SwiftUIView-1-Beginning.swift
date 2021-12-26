//
//  SwiftUIView-1-Beginning.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 25.12.2021.
//

import SwiftUI

struct SwiftUIView_1_Beginning: View {
    var body: some View {
        VStack{
            
            ForEach(1..<10){i in
                Text("asdahhh" + String(i))
            }
        }
        
      
    }
}

struct SwiftUIView_1_Beginning_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_1_Beginning()
    }
}
