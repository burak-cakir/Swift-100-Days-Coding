//
import Foundation

class jsonRepository : ObservableObject{
    
    @Published var users : [userModel] = [userModel]()
    @Published var user : userModel = userModel()
    
    func getAll() -> [userModel]{
        
        guard let url = URL(string: Config.apiURL + "/users") else {return [userModel]()}
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            
            DispatchQueue.main.async {
                do{
                    
                    if let users = data {
                        let decodeData = try JSONDecoder().decode([userModel].self, from: users)
                        
                        self.users = decodeData
                    }
                    
                }
                catch{
                    print(error.localizedDescription)
                }
            }
   
            
        }.resume()
        
        return self.users
        
    }
    
    
    func getUserById(id:String) -> userModel{
        
        guard let url = URL(string: Config.apiURL + "/users/" + id) else {return userModel()}
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            
            DispatchQueue.main.async {
                do{
                    
                    if let user = data {
                        let decodeData = try JSONDecoder().decode(userModel.self, from: user)
                        
                        self.user = decodeData
                    }
                    
                }
                catch{
                    print(error.localizedDescription)
                }
            }
   
            
        }.resume()
        
        return self.user
        
    }
    
    
}
