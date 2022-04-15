//
//  DemarcheList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import SwiftUI

struct DemarcheList: View {
    
    @Binding var demarches: [Demarche]
    
    var body: some View {
        NavigationView{
            
            List(demarches){demarche in
                
                if demarche.demarcheName == "Enregistrer une voiture au nom de son entreprise" {
                    NavigationLink(destination: ToDoRegisterVehicle()){
                        XtrdDemarcheList(demarche: demarche)
                    }
                }else if demarche.demarcheName == "Comment enregistrer son entreprise"{
                    NavigationLink(destination: ToDoDemarcheRegisterEnt()){
                        XtrdDemarcheList(demarche: demarche)
                    }
                }else{
                    NavigationLink(destination: ToDoEmployAnIntern()){
                        XtrdDemarcheList(demarche: demarche)
                    }
                }
            }
            .navigationBarTitle("MES DEMARCHES")
            .onAppear(perform: {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.darkGray]
            })
        }
    }
}


struct DemarcheList_Previews: PreviewProvider {
    static var previews: some View {
        DemarcheList(demarches: .constant([Demarche]()))
    }
}
