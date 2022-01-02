//
//  TabButtonView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 2.01.2022.
//

import SwiftUI

struct TabButtonView: View {
    var title : String
    @Binding var selected: String
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()){ selected = title }
        }){
      Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical,10)
                .padding(.horizontal, selected == title ? 13 : 0)
                .background(
//                    animasyon gelecek
                    ZStack{
                        if selected == title {
                            Color.black
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        }
        
    }
}

