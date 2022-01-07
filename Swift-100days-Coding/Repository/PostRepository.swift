


import Foundation


class postRepository{
    
    
    func getAll(completionHandler: @escaping([PostModel]) -> Void){
        
        guard let url = URL(string:  Config.apiURL + "/posts") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            do{
                if let returnData = data{
                    let decodeData = try JSONDecoder().decode([PostModel].self, from: returnData)
                    completionHandler(decodeData)
                    
                }
            }
            catch{
                print("Error")
            }
            
        }.resume()
        
        
    }
    
    //Bu fonksiyon web api ye category ekler. Daha sonra eklenilen kategoriyi (yani servisin döndüğü kategoriyi bana completion Handler olarak verir)
    func add(postModel: PostModel, completionHandler:  @escaping (PostModel)-> Void){
        
        guard let url = URL(string: Config.apiURL + "/posts") else {return}
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let postString = "userId=\(1)&id=\(1)&title=\(postModel.title)&description=\(postModel.body)"
        
        
        request.httpBody = postString.data(using: .utf8)
        
        
        URLSession.shared.dataTask(with: request){ (data,response,error) in
            
            do{
                
                if let returnData = data{
                    let decodeData = try JSONDecoder().decode(PostModel.self, from: returnData)
                    
                    completionHandler(decodeData)
                    
                    
                }
                
            }
            catch{
                print("Error! hata")
            }
            
        }.resume()
    }
    
    
}
