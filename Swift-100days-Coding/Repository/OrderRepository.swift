//
//  OrderRepository.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 5.01.2022.
//

import Foundation


class OrderManager : ObservableObject
{
    @Published var orders : [OrderModel] = [OrderModel]()
    @Published var order : OrderModel = OrderModel()
    
    func getAll() -> [OrderModel]{
        
      
        guard let url = URL(string: "https://northwind.vercel.app/api/orders") else{ return [OrderModel]()}
        
        URLSession.shared.dataTask(with: url){(data, response, error) in
            
            do{
                if let orders = data{
               
                    let decodeData = try JSONDecoder().decode([OrderModel].self , from: orders)
                    
                    self.orders = decodeData
                    
                    
                }
            }
            catch{
                print("Error")
            }
            
        }.resume()
        
        return  self.orders;
        
    }
    
    
    func getOrderById(id:Int) -> OrderModel{
        guard let url = URL(string: "https://northwind.vercel.app/api/orders/" + String(id)) else{ return OrderModel()}
        
        
       
            URLSession.shared.dataTask(with: url){(data, response, error) in
            
            do{
                if let order = data{
               
                    let decodeData = try JSONDecoder().decode(OrderModel.self , from: order)
                    
                    DispatchQueue.main.async {
                    self.order = decodeData
                        
                      }
                  
                    
                }
            }
            catch{
                print("Error")
            }
            
        }.resume()
        
        return  self.order;
    }
    
}
