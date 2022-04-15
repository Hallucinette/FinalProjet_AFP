//
//  CreaEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct CreaEntList: View {
    
    @Binding var favorisList: [Favoris]
    @Binding var demarches: [Demarche]
    
    var creaEnts = [
        CreaEnt(creaEntName: "Quelle type d'entreprise choisir ?"),
        CreaEnt(creaEntName: "Comment enregistrer son entreprise")
    ]
    
    var body: some View {
            
        List(creaEnts){ creaEnt in
            if creaEnt.creaEntName == "Quelle type d'entreprise choisir ?"{
                NavigationLink (destination: QuelTypeEntList()){
                    XtrdCreaEntList (creaEnt: creaEnt)
                }
            }else{
                NavigationLink (destination: RegisterEntList(favorisList: $favorisList, demarches: $demarches)){
                    XtrdCreaEntList (creaEnt: creaEnt)
                }
            }
        }
        .lineLimit(100)
        .navigationBarTitle("CEA D'ENT")
    }
}

struct CreaEntList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CreaEntList(favorisList: .constant([Favoris]()), demarches: .constant([Demarche]()))
        }
    }
}
