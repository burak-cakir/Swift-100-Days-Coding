//
//  SwiftUIView-1-Beginning.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 25.12.2021.
//

import SwiftUI

struct SwiftUIView_1_Beginning: View {
    
    
    @State var soru5: String=""
    @State var resultSoru5 : String = ""
    
    var body: some View {
        
        
        
        VStack{
            
            ForEach(0..<3){i in
                Text("asda " + String(i))
            }
            VStack{
                        
                        TextField("Data:",text:$soru5)
                            .padding(3)
                            
                        Button("Calc"){
                            
                             
                            var sayac = 0;
                            for element in soru5{
                                
                                if sayac % 2 == 0{
                                    resultSoru5 = resultSoru5 +  element.lowercased()
                                }
                                else{
                                    resultSoru5 = resultSoru5 + element.uppercased()
                                }
                                
                                sayac = sayac + 1
                                
                            }
                            
                            
                            
                        }
                        
                        .foregroundColor(Color.red)
                        .padding(3)
                    
                
                        
                        Text(resultSoru5)
                        
                        
                    }
            
        }
        
      
    }
}

struct SwiftUIView_1_Beginning_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_1_Beginning()
    }
}
