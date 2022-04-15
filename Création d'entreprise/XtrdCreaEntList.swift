//
//  XtrdCreaEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct XtrdCreaEntList: View {
    
    var creaEnt: CreaEnt
    
    var body: some View {
        
        Text(creaEnt.creaEntName)
            .padding(10)
        
    }
}

struct XtrdCreaEntList_Previews: PreviewProvider {
    static var previews: some View {
        XtrdCreaEntList(creaEnt: CreaEnt(creaEntName: "oui oui"))
    }
}
