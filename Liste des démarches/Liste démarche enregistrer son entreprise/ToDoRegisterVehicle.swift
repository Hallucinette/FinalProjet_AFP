//
//  RegisterVehicleList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import SwiftUI

struct ToDoRegisterVehicle: View {
    
    private var registerVehicles = [
        OneDemarche(step: "Barrer et dater la carte grise du véhicule"),
        OneDemarche(step: "Remplir de certificat de cession du véhicule"),
        OneDemarche(step: "Remplir la demande de certificat d’immatriculation sur l’ANTS", groupAttachDoc: true),
        OneDemarche(step: "Certificat de cession du véhicule", tab: true, attachDoc: true, groupAttachDoc: true),
        OneDemarche(step: "Extrait Kbis", tab: true, groupAttachDoc: true),
        OneDemarche(step: "Attestation de contrôle technique", tab: true),
        OneDemarche(step: "Avoir un justificatif de règlement des frais et taxes d’immatriculation du véhicule"),
        OneDemarche(step: "Avoir une pièce d’identité"),
        OneDemarche(step: "Envoyer les documents en lettre recommendée à l'adresse du CCI de votre commune")
    ]
    
    var body: some View {
            
        List(registerVehicles){ oneDemarche in
            XtrdOneDemarche (oneDemarche: oneDemarche)
                .lineLimit(10)
        }
        .navigationTitle("Enregistrer une voiture au nom de son entreprise")
            .lineLimit(.max)
    }
}

struct ToDoRegisterVehicle_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRegisterVehicle()
    }
}
