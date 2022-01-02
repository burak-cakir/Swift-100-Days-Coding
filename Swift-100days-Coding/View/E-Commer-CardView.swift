//
//  E-Commer-CardView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import SwiftUI

struct E_Commer_CardView: View {
    
    var item : Item
    var animation : Namespace.ID
    
    
    var body: some View {
      
        VStack{
            HStack{
                Spacer(minLength: 0)
                Text(item.price)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical,5)
                    .padding(.horizontal,10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
            }
            Image(item.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .matchedGeometryEffect(id: "image\(item.id)", in: animation)
              
                .padding(.top,10)
                .padding(.bottom)
                .padding(.horizontal,10)
                .frame( height: 100)
            
            Text(item.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                 
              
            
            Text(item.subTitle)
                .font(.caption)
                .foregroundColor(.gray)
               
              
             
            HStack{
                Button(action: {}){
                    Image(systemName: "suit.heart")
                        .font(.title2)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "heart\(item.id)", in: animation)
                      
                     
                    
                }
                Spacer(minLength: 0)
                Text(item.rating)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .matchedGeometryEffect(id: "rating\(item.id)", in: animation)
                  
                 
            }
        }
        .padding(.bottom )
       
        .background(Color(item.bimage).opacity(0.2))
        .cornerRadius(15)
    }
}

