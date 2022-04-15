//
//  RegisterEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct RegisterEntList: View {
    
    @Binding var favorisList: [Favoris]
    @Binding var demarches: [Demarche]
    
    var registerEnts = [
        RegisterEnt(registerEntName: "La démarche"),
        RegisterEnt(registerEntName: "Documents")
    ]
    
    var body: some View {
        
        List(registerEnts){ registerEnt in
            if registerEnt.registerEntName == "La démarche"{
                NavigationLink(destination: DemarcheRegisterEnt(demarches: $demarches, favorisList: $favorisList)){
                    XtrdRegisterEntList (registerEnt: registerEnt)
                }
            }else{
                NavigationLink(destination: DocRegisterEntList(favorisList: $favorisList, demarches: $demarches)){
                    XtrdRegisterEntList (registerEnt: registerEnt)
                }
            }
        }
        .navigationBarTitle("ENREGISTRER SON ENTREPRISE")
    }
}

struct RegisterEntList_Previews: PreviewProvider {
    static var previews: some View {
        RegisterEntList(favorisList: .constant([Favoris]()), demarches: .constant([Demarche]()))
    }
}
