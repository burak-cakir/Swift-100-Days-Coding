//
//  PersonCV.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 4.01.2022.
//

import SwiftUI

struct PersonCV: View {
    @State var itemtext : String = ""
    
    var body: some View {
        VStack{
//            @State var Person = Person()
            Button("ekle"){
                
            }.padding()
                .foregroundColor(.white)
                .font(.title)
                .background(.black)
                .cornerRadius(5)
            
          TextField("Here write", text: $itemtext)
            Text(itemtext)
          
        }
    }
}

struct PersonCV_Previews: PreviewProvider {
    static var previews: some View {
        PersonCV()
    }
}
