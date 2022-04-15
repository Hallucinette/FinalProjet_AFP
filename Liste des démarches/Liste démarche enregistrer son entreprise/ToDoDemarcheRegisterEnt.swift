//
//  ToDoDemarcheRegisterEnt.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 14/12/2021.
//

import SwiftUI

struct ToDoDemarcheRegisterEnt: View {
    
    var ToDoRegisterEnt = [
        OneDemarche(step: "Déposer le nom de l'entreprise"),
        OneDemarche(step: "Immatriculer la société"),
        OneDemarche(step: "Déclarer le commerce auprès de :"),
        OneDemarche(step: "La Poste", tab: true, attachDoc: false, groupAttachDoc: true),
        OneDemarche(step: "Le fournisseur d’électricité", tab: true, attachDoc: false, groupAttachDoc: true),
        OneDemarche(step: "Le fournisseur de gaz", tab: true, attachDoc: false, groupAttachDoc: true),
        OneDemarche(step: "Le fournisseur d’eau", tab: true, attachDoc: false, groupAttachDoc: true),
        OneDemarche(step: "Le fournisseur d’eau", tab: true, attachDoc: false, groupAttachDoc: true),
        OneDemarche(step: "Le fournisseur téléphone et Internet", tab: true, attachDoc: false, groupAttachDoc: true)
    ]
    
    var body: some View {
        
        List(ToDoRegisterEnt){ oneDemarche in
            XtrdOneDemarche (oneDemarche: oneDemarche)
                .lineLimit(10)
        }
        .navigationTitle("Enregistrer une voiture au nom de son entreprise")
    }
}

struct ToDoDemarcheRegisterEnt_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDemarcheRegisterEnt()
    }
}
