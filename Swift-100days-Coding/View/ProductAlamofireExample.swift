//
//  ProductAlamofireExample.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 7.01.2022.
//

import SwiftUI

struct ProductAlamofireExample: View {
    
    var productRepository = GenericRepository<ProductModel>()
    @State var products = [ProductModel]()
    
    var body: some View {
        VStack{
         
            List(products, id:\.name){item in
                
                Text(item.name)
                
            }
            
        }
        .onAppear(){
            productRepository.getAll(url: "/products"){ data in
                
                products = data;
                
            }
        }
    }
}

struct ProductAlamofireExample_Previews: PreviewProvider {
    static var previews: some View {
        ProductAlamofireExample()
    }
}
