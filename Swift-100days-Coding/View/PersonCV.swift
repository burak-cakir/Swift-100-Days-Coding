//
//  PersonCV.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 4.01.2022.
//

import SwiftUI

struct PersonCV: View {
    @State var itemtext : String = "test"
    
    var body: some View {
        NavigationView{
            VStack{
    //            @State var Person = Person()
             
              TextField("Here write", text: $itemtext)
                    .font(.headline)
                    
                    .background(Color.gray.opacity(3).cornerRadius(10))
                    .padding(0)
                
                Button(action: {
                    
                }, label: {
                    Text("ADD")
                       .frame(maxWidth : .infinity)
                        .foregroundColor(.white)
                        .font(.headline)
                        .background(Color.blue.opacity(3).cornerRadius(10))
                        .padding()
                    
                })
                
                
                
                Text(itemtext)
                    .font(.caption)
                    .background(Color.gray.opacity(3).cornerRadius(3))
                    .padding()
                
              Spacer()
                    
            }
            .padding()
            .navigationTitle("BOOTCAMP")
        }
    }
}

struct PersonCV_Previews: PreviewProvider {
    static var previews: some View {
        PersonCV()
    }
}
