//
//  DocRegisterEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 13/12/2021.
//

import SwiftUI

struct DocRegisterEntList: View {
    
    @Binding var favorisList: [Favoris]
    @Binding var demarches: [Demarche]
    
    //here we can send the document in a favori list.
    
    var docsRegisterEnts = [
        DocRegisterEnt(DocRegisterEntName: "Cerfa P0 CMB")
    ]
    
    var body: some View {

        List(docsRegisterEnts){ docRegisterEnt in
            NavigationLink(destination: CerfaP0CMB(favorisList: $favorisList, demarches: $demarches)){
                XtrdDocRegisterEnt (docRegisterEnt: docRegisterEnt)
            }
        }
        .navigationTitle("DOCUMENTS")
    }
}

struct DocRegisterEntList_Previews: PreviewProvider {
    static var previews: some View {
        DocRegisterEntList(favorisList: .constant([Favoris]()), demarches: .constant([Demarche]()))
    }
}
