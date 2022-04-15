import SwiftUI

struct FavorisRow: View {
   
    
    var listFav: Favoris

    var body: some View {
        
        Text(listFav.name)

    }
}
    

struct FavorisRow_Previews: PreviewProvider {
    static var previews: some View {
        FavorisRow(listFav: Favoris(name: "hello"))
        
       
    }
}
