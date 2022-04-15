//
//  XtrdQuelTypeEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct XtrdQuelTypeEntList: View {
    
    var quelTypeEnt: QuelTypeEnt
    
    var body: some View {
        
        Text(quelTypeEnt.quelTypeEntName)
            .padding(10)
        
    }
}

struct XtrdQuelTypeEntList_Previews: PreviewProvider {
    static var previews: some View {
        XtrdQuelTypeEntList(quelTypeEnt: QuelTypeEnt(quelTypeEntName: "Bonjour"))
    }
}
