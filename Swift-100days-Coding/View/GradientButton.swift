

import SwiftUI

struct GradientButton: View {

    var MyGradient  = Gradient(colors: [Color(.systemTeal),Color(.systemPurple),Color(.systemBlue),Color(.systemRed)])
    var body: some View {
 
        VStack{
            Button{
                print("Linear Gradient")
            }label: {
                Text("Linear Gradient")
                    .bold()
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: MyGradient , startPoint: .leading, endPoint: .trailing))
                    .clipShape(Capsule())
            }
            Button{
                print("Linear Gradient")
            }label: {
                Text("Linear Gradient")
                    .bold()
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(RadialGradient(gradient: MyGradient, center: .center, startRadius: 5 , endRadius : 120))
                    .clipShape(Capsule())
            }
            Button{
                print("Youtube Button")
            }label: {
                Text("Youtube Button")
                    .bold()
                    .frame(width: 280, height: 50)
                    .font(.title)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .overlay(Capsule().stroke(LinearGradient(gradient: MyGradient,
                                                             startPoint: .leading,
                                                             endPoint: .trailing),
                                                             lineWidth: 5 ))
            }
            Button{
                print("Radiel  Gradient")
            }label: {
                Text("Radiel  Gradient")
                    .bold()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient:  MyGradient , startPoint: .leading, endPoint: .trailing))
                    .clipShape(Circle())
            }
            Button{
                print("Angular  Gradient")
            }label: {
                Text("Angula  Gradient")
                    .bold()
                    .frame(width: 160, height: 160)
                    .foregroundColor(.white)
                    .background(AngularGradient(gradient: MyGradient, center: .center))
                    .clipShape(Circle())
            }
        
        
        
        }
        
        
        
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton()
    }
}
