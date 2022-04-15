//
//  XtrdDemarcheList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import SwiftUI

struct XtrdDemarcheList: View {
    
    var demarche: Demarche
    
    var body: some View {
        
        Text(demarche.demarcheName)
            .padding(10)
    }
}

struct XtrdDemarcheList_Previews: PreviewProvider {
    static var previews: some View {
        XtrdDemarcheList(demarche: Demarche(demarcheName: "Acheter une voiture"))
    }
}
