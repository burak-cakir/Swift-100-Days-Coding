//
//  OrderView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 5.01.2022.
//

import SwiftUI

struct OrderView: View {
    
    @ObservedObject var orderManager = OrderManager()
    
    var body: some View {
        
       
            
        NavigationView{

                    List(orderManager.orders){ order in

                        NavigationLink(

                            //destination: Text("data"),
                            destination: OrderDetailView(id: order.id),
                            label: {
                                Text(order.shipName)
                            }
                        )
                        .navigationTitle("Order List")
                        .navigationBarTitleDisplayMode(.inline)

                    }
                    .onAppear(){
                        orderManager.getAll()
                    }
                }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}





struct OrderDetailView: View {
    
    @ObservedObject var orderManager = OrderManager()
    var orderId = 0
//    @State var data = orderManager.getOrderById(id:222)
    
    init(id:Int) {
        self.orderId = id
    }
//
    
    
    var body: some View{
        VStack{
            Text(orderManager.order.shipName)
                
        }
        .onAppear(){
            orderManager.getOrderById(id: self.orderId)
        }
   
    }
    
}
