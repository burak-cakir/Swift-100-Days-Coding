//
//  E-CommerceDetail.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import SwiftUI

struct E_CommerceDetail: View {
    @Binding var SelectedItem : Item
    @Binding var Show : Bool
    
    var animation : Namespace.ID
    @State var loadContent = false
    
    
    var body: some View {
    
        VStack{
            HStack(spacing: 25){
                Button(action: {
                    withAnimation(.spring()){
                        Show.toggle()
                    }
                    
                    
                }){
                    
                   Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.black)
                    
                }
                Spacer()
                Button(action: { }){
                    
                    Image(systemName: "magnifyingglass")
                         .font(.title)
                         .foregroundColor(.black)
                    
                }
                
                Button(action: { }){
                    
                    Image(systemName: "bag")
                         .font(.title)
                         .foregroundColor(.black)
                    
                }
                
                
                
                
                Spacer()
                
                
            }
            .padding()
            
            VStack{
                Image(SelectedItem.image)
                    .resizable()
//                  .frame(width: 170, height: 300, alignment: .center)
                    .aspectRatio( contentMode: .fit)
                    .matchedGeometryEffect(id: "image\(SelectedItem.id)", in: animation)
                    .padding()
                
                Text(SelectedItem.title )
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                Text(SelectedItem.subTitle )
                    .foregroundColor(.gray)
                    .padding(.top,4)
                
                HStack{
                     
                    Text(SelectedItem.rating)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .matchedGeometryEffect(id: "rating\(SelectedItem.id)", in: animation)
                      
                    
                    Spacer()
                    
                    Button(action: {}){
                        Image(systemName: "suit.heart")
                            .font(.title2)
                            .foregroundColor(.black)
                            .matchedGeometryEffect(id: "heard\(SelectedItem.id)", in: animation)
                          
                }
                
            }
                .padding()
            
            Spacer()
            
            
            
            
            
        }
            .padding( .top,35)
            .background(
                Color(SelectedItem.bimage)
                    .clipShape(CustomShape())
                    .matchedGeometryEffect(id: "color\(SelectedItem.id)", in: animation)
                  
            )
            .cornerRadius(15)
            .padding()
           
            VStack{
                VStack(spacing:8){
                    Text("Exclusive Offer")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    Text("Frame + Lens  for $35 (it's 50% off)")
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
                .frame(width: UIScreen.main.bounds.width - 30 , alignment: .leading )
            }
            .padding([.horizontal,.bottom])
            .frame(height: loadContent ? nil : 0)
            .opacity(loadContent ? 1 : 0)
            Spacer()
            
    
    
    }
}
}

//bVrS6TEhcEY
