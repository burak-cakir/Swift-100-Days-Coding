//
//  E-Commerce-View.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import SwiftUI
 
var tabs = ["Glasses","Watched","Shoes","Parfum","Other" ]


struct E_Commerce_View: View {
    @State var selected = tabs [0]
    @Namespace  var animation
    
    @State var show = false
    @State var SelectedItem : Item = items[0]
    
    
    var body: some View {
        ZStack{
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
                        .padding()
                        .padding(.top,5)
                     
                    }
                    
                    LazyVGrid(columns: Array(repeating: GridItem( .flexible(), spacing:20), count:2 ),spacing: 25  ) {
                        ForEach(items) {item in
                            E_Commer_CardView(item: item, animation: animation)
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        SelectedItem = item
                                        show.toggle()
                                    }
                                }
                        }
                    }
                    .padding()
                }
            }
        }
        .background(Color.white.ignoresSafeArea())
        .opacity(show ? 0 : 1)
        Spacer(minLength: 0)
        
        if show{
            E_CommerceDetail(SelectedItem: $SelectedItem, Show: $show, animation: animation)
        }
    }
}

struct E_Commerce_View_Previews: PreviewProvider {
    static var previews: some View {
        E_Commerce_View()
    }
}
