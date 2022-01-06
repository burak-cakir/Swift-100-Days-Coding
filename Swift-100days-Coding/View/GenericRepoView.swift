//
//  GenericRepoView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 7.01.2022.
//

import SwiftUI

struct GenericRepoView: View {
    
//    var commentRepo = GenericRepository<commentModel>()
//    @State var comlist = [commentModel]()
//
    
    var Repo = GenericRepository<photoModel>()
    @State var list = [photoModel]()
    
    var body: some View {
        VStack{
         
            List(list, id:\.title){item in
                
                Text(item.title)
                
            }
            
        }
        VStack{
            Text("GENERİC REPO")
        }
        .onAppear(){
            Repo.getAll(url: "/photos"){ data in
                
                list = data;
                
            }
        }
    }
}

struct GenericRepoView_Previews: PreviewProvider {
    static var previews: some View {
        GenericRepoView()
    }
}
