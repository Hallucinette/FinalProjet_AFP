//
//  ContentView.swift
//  ProjetFinal
//
//  Created by Apprenant 55 on 13/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var demarches = [
        Demarche(demarcheName: "Enregistrer une voiture au nom de son entreprise"),
        Demarche(demarcheName: "Employer un stagiaire")
        ]
    
    @State private var favorisList = [
        Favoris(name: "Devis"),
        Favoris(name: "Modèle de facture")
    ]
    
    var body: some View {
        TabView{
            Accueil(favorisList: $favorisList, demarches: $demarches)
                .tabItem {
                    Image(systemName: "house")
                    Text("Accueil")
                }
            ProfileView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profil")
                }
            FavList(favorisList: $favorisList)
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Favori")
                }
            DemarcheList(demarches: $demarches)
                .tabItem{
                    Image(systemName: "line.3.horizontal.decrease")
                    Text("Demarche")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
