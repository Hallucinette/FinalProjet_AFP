//
//  CerfaP0CMB.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 13/12/2021.
//

import SwiftUI

struct CerfaP0CMB: View {
    
    @Binding var favorisList: [Favoris]
    @Binding var demarches: [Demarche]
    
    let docTitle = "Formulaire cerfa PO CMB"

    var body: some View {
        
        ZStack{
            
            Color.gray
                .edgesIgnoringSafeArea(.bottom)
            
            HStack{
                ScrollView(.horizontal, showsIndicators: true){
                    HStack{
                        Image("cerfaP0CMB1")
                            .aspectRatio(contentMode: .fill)
                            .padding(1)
                            .background(Color.white)
                        Image("cerfaP0CMB2")
                            .aspectRatio(contentMode: .fill)
                            .padding(1)
                            .background(Color.white)
                    }}
            }
        }
        .navigationBarTitle(docTitle)
        .navigationBarItems(trailing:
            TheActionSheet(demarches: $demarches, saveDemarcheName: docTitle, favorisList: $favorisList, saveFavorisName: docTitle)
        )
    }
}

struct CerfaP0CMB_Previews: PreviewProvider {
    static var previews: some View {
        CerfaP0CMB(favorisList: .constant([Favoris]()), demarches: .constant([Demarche]()))
    }
}
