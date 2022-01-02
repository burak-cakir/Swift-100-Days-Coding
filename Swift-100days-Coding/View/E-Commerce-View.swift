//
//  E-Commerce-View.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import SwiftUI
 
var tabs = ["Glasses","Watched","Shoes","Parfume" ]


struct E_Commerce_View: View {
    @State var selected = tabs [0]
    @Namespace  var animation
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {}) {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 25 , weight: .heavy))
                        .foregroundColor(.black)
                }
                Spacer(minLength: 0)
                Button(action: { }) {
                    Image(systemName: "line.3.horizontal")
                }
                
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            
            
            ScrollView{
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 5){
                            Text("Let's")
                                .font(.title)
                                .foregroundColor(.black)
                            Text("Get Started")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .fontWeight(.heavy)
                            
                        }
                        .padding(.horizontal)
                        Spacer(minLength: 0)
                    }
                    HStack(spacing: 0){
                        ForEach(tabs, id: \.self) { tab in
                            TabButtonView(title: tab, selected: $selected, animation: animation)
                            
                            if tabs.last != tab{Spacer(minLength: 0)}
                        }
                    }
                 
                }
            }
        }
        .background(Color.white.ignoresSafeArea())
        Spacer(minLength: 0)
    }
}

struct E_Commerce_View_Previews: PreviewProvider {
    static var previews: some View {
        E_Commerce_View()
    }
}
