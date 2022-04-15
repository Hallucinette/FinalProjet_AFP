
//  ActionSheet.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 14/12/2021.
//

import SwiftUI

struct TheActionSheet: View {
    
    @State private var showActionView = false
    
    @Binding var demarches: [Demarche]
    var saveDemarcheName: String
    
    @Binding var favorisList: [Favoris]
    var saveFavorisName: String
    
    var body: some View {
        
        Button("\(Image(systemName: "plus.circle.fill"))"){
            showActionView = true
        }
        .actionSheet(isPresented: $showActionView){
            ActionSheet(
                title: Text("Options"),
                buttons: [
                    .cancel(),
                    .default(Text("Ajouter aux favoris")){
                        favorisList.insert(Favoris(name: saveFavorisName), at: 0)
                    },
                    .default(Text("Créer une démarche")){
                        demarches.insert(Demarche(demarcheName: saveDemarcheName), at: 0)
                    }
                ]
            )
        }
        .foregroundColor(.black)
        .font(.system(size: 20))
        .padding(15)
    }
}

struct TheActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        TheActionSheet(demarches: .constant([Demarche]()), saveDemarcheName: "actionSheet",favorisList: .constant([Favoris]()), saveFavorisName: "actionSheet")
    }
}
