//
//  ProductSampleView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 28.12.2021.
//

import SwiftUI
func getProducts() -> [Product]{
    return [
        Product(productName: "Samsung", productDescription: "Samsunuların", productunitInStok: 99, productprice: 3000),
        Product(productName: "İphone", productDescription: "Amerikandastur", productunitInStok: 989 , productprice: 5000),
        Product(productName: "Huawei", productDescription: "hawurrr", productunitInStok: 109, productprice: 4000),
        Product(productName: "Pringle", productDescription: "PPP", productunitInStok: 109, productprice: 5500),
        Product(productName: "Deneme", productDescription: "PPasdaP", productunitInStok: 1029, productprice: 6500)
]
    
    
    
}



struct ProductSampleView: View {
    @State var minPrice : String = ""
    @State var maxPrice : String = ""
    @State var searchByName : String = ""
    @State var searchDataCount : Int = getProducts().count
    @State var isSortedbyName : Bool = false
    @State var isSortedbyPrice : Bool = false
    
    @State var products : [Product] = getProducts()
   
    
    var body: some View {
        VStack {
            TextField("Min price", text: $minPrice)
                .padding()
            TextField("Max price", text: $maxPrice)
                .padding()
          
                Button("Get Products"){
                    
                    let minPriceValue : Int = Int(minPrice) ?? 0
                    let maxPriceValue : Int = Int(maxPrice) ?? 0
                    
                    var productResult = [Product]()
                    
                    
                    if minPrice.isEmpty && maxPrice.isEmpty {
                        productResult = getProducts()
                    }
                    else{
                        if minPrice.isEmpty{
                            productResult =  products.filter{ $0.productprice < maxPriceValue}
                        }
                        else if maxPrice.isEmpty{
                            productResult =  products.filter{ $0.productprice > minPriceValue}
                        }
                        else {
                            productResult =  products.filter{ $0.productprice > minPriceValue && $0.productprice < maxPriceValue}
                        }
                    }
                    
                    products = productResult
                    searchDataCount = productResult.count
                    
                    
                   
                }
                .foregroundColor(Color.white)
                
                .padding()
                .background(
                    Color.blue
                        .cornerRadius(14)
                        .shadow( radius: 10, x:25)
                )
               
            

            if   searchDataCount == 0 {
                Text("No result")
            }

            
            List (products, id:\.id){ item in
                Text(item.productName + " / " + String(item.productprice)  )
            }
        }
      
        
    }
}

struct ProductSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSampleView()
    }
}
