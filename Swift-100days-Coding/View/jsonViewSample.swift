

import SwiftUI

struct jsonViewSample: View {
    
    
    @ObservedObject var json = jsonRepository()
    
    
    var body: some View {
        

        List(json.getAll()){ user in
            Text(user.name + "-" + user.company!.name  )
            }
        Text(String(json.getAll().count))
    }
}
struct jsonViewSample_Previews: PreviewProvider {
    static var previews: some View {
        jsonViewSample()
    }
}
