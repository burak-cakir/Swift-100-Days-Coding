//
//  AddTodoView.swift
//  Swift-100days-Coding
//
//  Created by burak cakir on 8.01.2022.
//

import SwiftUI

struct AddTodoView: View {
    var todosRepository = TodosRepository()
    
    @State var title : String = "jhhj"
    
    
    
    var body: some View {
        VStack{
            TextField("Title", text: $title)
                .padding()
                .foregroundColor(.red)
                .font(.headline)
                .background(Color.blue)
            
           
                
            
            Button("Ekle"){
                let todoModel = TodoModel(userId: 0, id: 0, title: title, completed: false)
                todosRepository.add( todoModel: todoModel){ newCategory in
                    print(newCategory)
                    
                }
            }
            Text("todoview REPO")
        }
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
