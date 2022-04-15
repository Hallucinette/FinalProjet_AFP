//
//  FavList.swift
//  Prototype
//
//  Created by Apprenant 70 on 10/12/2021.
//

import SwiftUI

struct FavList: View {
    
    @Binding var favorisList: [Favoris]
    
    var body: some View {
        NavigationView{
            List(favorisList){ listFav in
                if listFav.name == "Modèle de facture"{
                    NavigationLink (destination: Mode_leFact()){
                        FavorisRow (listFav: listFav)
                    }
                    
                }else if
                    listFav.name == "Formulaire cerfa PO CMB"{
                    NavigationLink (destination: CerfaP0CMB(favorisList: $favorisList, demarches: .constant([Demarche]()))){
                        FavorisRow (listFav: listFav)
                    }
                }
                else{
                    NavigationLink(destination: Devis()){
                        FavorisRow (listFav: listFav)
                    }
                }
            }
            .lineLimit(100)
            .navigationBarTitle ("Favoris")
            .onAppear(perform: {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.darkGray]
            })
        }
    }
}
struct FavList_Previews: PreviewProvider {
    static var previews: some View {
        FavList(favorisList: .constant([Favoris]()))
    }
}



