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
    
//    var Repo = GenericRepository<photoModel>()
//    @State var list = [photoModel]()
//
    var Repo = GenericRepository<PostModel>()
    @State var list = [PostModel]()
    
    
    
    @State var idm : String = "1"
    
    @State var postRepo = postRepository()
    
    @State var title : String = ""
    @State var bodym : String = ""
    
    var body: some View {
        VStack{
         
            List(list, id:\.title){item in
                
                Text(String(item.id) + "-" + item.title.uppercased())
                
            }
            
        }
        
        .onAppear(){
            Repo.getAll(url: "/posts"){ data in
                
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
