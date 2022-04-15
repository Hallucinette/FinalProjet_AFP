//
//  DemarcheRegisterEnt.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 14/12/2021.
//

import SwiftUI

struct DemarcheRegisterEnt: View {
    
    @Binding var demarches: [Demarche]
    @Binding var favorisList: [Favoris]
    
    var docTitle = "Comment enregistrer son entreprise"
    
    var body: some View {
        
        VStack{
            
            Text(docTitle)
                .font(.title)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
            
            Text("""
                 DÉPOSER LE NOM DE L’ENTREPRISE
                 Etape à faire auprès de l’Institut national de la propriété industrielle (INPI) ou sur le site de l’organisme. Veillez toutefois à vérifier la disponibilité du nom au préalable.

                 IMMATRICULER LA SOCIÉTÉ
                 Vous devez vous rendre au Répertoire national des entreprises (RNE), au Registre du commerce et des sociétés (RCS) et au Centre de formalité des entreprises (CFE), en ayant remplis le document cerfa qui correspond à votre entreprise (quelle entreprise choisir ?).

                 DÉCLARER LE COMMERCE
                 Après avoir créé votre société, vous devez la déclarer auprès de :
                 La Poste
                 Le fournisseur d’électricité
                 Le fournisseur de gaz
                 Le fournisseur d’eau
                 Le fournisseur téléphone et Internet
            """)
                .padding()
        }
        .navigationBarItems(
            trailing:
                TheActionSheet(demarches: $demarches, saveDemarcheName: docTitle, favorisList: $favorisList, saveFavorisName: docTitle)
        )
    }
}

struct DemarcheRegisterEnt_Previews: PreviewProvider {
    static var previews: some View {
        DemarcheRegisterEnt(demarches: .constant([Demarche]()), favorisList: .constant([Favoris]()))
    }
}
