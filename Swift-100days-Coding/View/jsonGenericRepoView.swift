

import SwiftUI

struct jsonGenericRepoView: View {
    
//    var todoRepo = GenericRepository<todoModel>()
//    @State var todosList = [todoModel]()
//
    
    var userRepo = GenericRepository<userModel>()
    @State var userList = [userModel]()
    
    var body: some View {
        VStack{
         
            List(userList, id:\.name){item in
                
                Text(item.name)
                
            }
            
        }
        .onAppear(){
            userRepo.getAll(url: "/users"){ data in
                
                userList = data;
                
            }
        }
    }
}

struct jsonGenericRepoView_Previews: PreviewProvider {
    static var previews: some View {
        jsonGenericRepoView()
    }
}
