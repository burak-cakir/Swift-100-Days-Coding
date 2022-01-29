//
//  MarqueeTextAnimation.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 29.01.2022.
//

import SwiftUI

struct MarqueeTextAnimation: View {
    
    var body: some View {
        NavigationView {
            VStack{
                
                
                Marquee(text: "Gökten bootcamp yağsa,  bize iki satır kod düşmez! Bir Junior İşsiz Yazılımcı", font: .systemFont(ofSize: 16, weight: .regular))
                    .padding()
            
                GeometryReader { proxy in
                    let size = proxy.size
                    
                        Image("imagess")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: size.width , height: size.height )
                            .cornerRadius(15)
                        
                    
                }
                .frame(height : 220)
                .padding(.horizontal)
             
                
                
                
                Marquee(text: "İnsan Kaynakların'dan cevap gelmiyor. İş Arayışım Mevcuttur", font: .systemFont(ofSize: 16, weight: .regular))
                    .padding(.vertical)
                    .navigationTitle("Marquee Text")
                    
            }
        }
        }
}

struct MarqueeTextAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MarqueeTextAnimation()
    }
}


struct Marquee: View {
    
    
    @State var storedSize : CGSize = .zero
    @State var offset : CGFloat = 0
//    @State var turnit : Bool = false
    var animationSpeed : Double = 0.02
    var delayTime : Double = 0.5
    @Environment (\.colorScheme) var scheme
    @State var text : String
    @State var font : UIFont
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false ) {
            Text(text)
                .font(Font(font))
                .offset(x : offset )
                .padding(.horizontal, 15)
        }
        .overlay(content: {
            HStack{
                let color : Color = scheme == .dark ? .black : .white
                
                LinearGradient(colors: [color,color.opacity(0.7),color.opacity(0.5),color.opacity(0.3)], startPoint: .leading, endPoint: .trailing)
                    .frame(width : 20)
                
                Spacer()
                
                
                LinearGradient(colors: [color,color.opacity(0.7),color.opacity(0.5),color.opacity(0.3)] .reversed(), startPoint: .leading, endPoint: .trailing)
                    .frame(width : 20)
            }
            
        })
        
        .disabled(true)
        .onAppear{
            
            let baseText = text
            
            (1...15).forEach { _ in
                text.append(" ")
                
            }
            text.append(baseText)
            
        storedSize = textSize()
            let timing : Double = (animationSpeed * storedSize.width )
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.linear(duration: timing)){
                    offset = -storedSize.width
                    
//                    offset = turnit ? -storedSize.width :  +storedSize.width
                }
                
            }
            
        
        }
        .onReceive(Timer.publish(every: ((animationSpeed * storedSize.width) + delayTime), on: .main, in: .default).autoconnect()){_ in
            
            offset = 0
            withAnimation(.linear(duration: (animationSpeed * storedSize.width))){
                offset = -storedSize.width
                
            }
        }
                   
    }
    
    func textSize()->CGSize{
        let attributes = [NSAttributedString.Key.font: font]
        let size = (text as NSString).size(withAttributes: attributes)
        return size
    }
}
