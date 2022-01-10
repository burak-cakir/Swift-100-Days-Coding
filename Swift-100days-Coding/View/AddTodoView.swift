

import SwiftUI

struct AddTodoView: View {
    
    @State var title : String = "hbj"
    
    @State var todos : [TodoModel] = [TodoModel]()
    
    var Repo = GenericRepository<TodoModel>()
    @State var list = [TodoModel]()
    var todosRepository = TodosRepository()
    
    
   
    
    
    var body: some View {
        VStack{
            
            VStack{
             
                List(list, id:\.title){item in
                    
                    if item.completed == true{
                        Text(String(item.id) + "-" + item.title.lowercased())
                            .foregroundColor(.red)
                            .font(.largeTitle)
                    }
                    else {
                        Text(String(item.id) + "-" + item.title.uppercased())
                    }
                    
                    
                   
                    
                }
                
            }
            
            .onAppear(){
                Repo.getAll(url: "/todos"){ data in
                    
                    list = data;
                    
                }
            }
            
            
            TextField("Title", text: $title)
                .padding()
                .foregroundColor(.red)
                .font(.headline)
                .background(Color.blue)
            
           
                
            
            Button("Add"){
                let todomodel = TodoModel( userId: 1, title: "asda", completed: false)
                 
                todosRepository.add(todoModel: todomodel){ newCategory in
                     todos.append(newCategory)
                     
                     
                     
                 
                 }
            }
           
        }
            Text("todoview REPO")
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}

