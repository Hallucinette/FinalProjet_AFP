//
//  TabBar.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 14/12/2021.
//

import SwiftUI

struct TabBar: View {
    
    @State private var demarches = [
        Demarche(demarcheName: "Enregistrer une voiture au nom de son entreprise"),
        Demarche(demarcheName: "Employer un stagiaire")
        ]
    
    @State private var favorisList = [
        Favoris(name: "Devis"),
        Favoris(name: "Modèle de facture")
    ]

    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                NavigationLink(destination: DemarcheList(demarches: $demarches)){
                    Text("demarches")
                }
                
                NavigationLink(destination: CreaEntList(favorisList: $favorisList, demarches: $demarches)){
                    Text("créa ent")
                }
                
                NavigationLink(destination: FavList(favorisList: $favorisList)){
                    Text("favoris")
                }
                
            }
            .onAppear(perform: {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.darkGray]
            })
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
