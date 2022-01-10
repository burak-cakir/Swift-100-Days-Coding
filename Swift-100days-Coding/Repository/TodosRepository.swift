import Foundation


class TodosRepository{
    
    
    func getAll(completionHandler: @escaping([TodoModel]) -> Void){
        
        guard let url = URL(string:  Config.apiURL + "/todos") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            do{
                if let returnData = data{
                    let decodeData = try JSONDecoder().decode([TodoModel].self, from: returnData)
                    completionHandler(decodeData)
                    
                }
            }
            catch{
                print("Error ")
            }
            
        }.resume()
        
        
    }
    
    //Bu fonksiyon web api ye category ekler. Daha sonra eklenilen kategoriyi (yani servisin döndüğü kategoriyi bana completion Handler olarak verir)
    func add(todoModel: TodoModel, completionHandler:  @escaping (TodoModel)-> Void){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let postString = "id=101&userID=1&title=title&completed=false"
        
       
        
        request.httpBody = postString.data(using: .utf8)
        
        
        URLSession.shared.dataTask(with: request){ (data,response,error) in
            
            do{
                
                if let returnData = data{
                    let decodeData = try JSONDecoder().decode(TodoModel.self, from: returnData)
                 
                    completionHandler(decodeData)
                    
                    
                }
                
            }
            catch{
                print("Error! hata todo hatası")
            }
            
        }.resume()
    }
    
    
}
