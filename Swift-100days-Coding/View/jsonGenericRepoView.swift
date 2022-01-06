

import SwiftUI

struct jsonGenericRepoView: View {
    
    var todoRepo = GenericRepository<todoModel>()
    @State var todosList = [todoModel]()
    
    var body: some View {
        VStack{
         
            List(todosList, id:\.title){item in
                
                Text(item.title)
                
            }
            
        }
        .onAppear(){
            todoRepo.getAll(url: "/todos"){ data in
                
                todosList = data;
                
            }
        }
    }
}

struct jsonGenericRepoView_Previews: PreviewProvider {
    static var previews: some View {
        jsonGenericRepoView()
    }
}
