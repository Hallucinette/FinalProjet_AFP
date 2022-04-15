//
//  XtrdRegisterEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct XtrdRegisterEntList: View {
    
    var registerEnt: RegisterEnt
    
    var body: some View {
        
        Text(registerEnt.registerEntName)
            .padding(10)
    }
}

struct XtrdRegisterEntList_Previews: PreviewProvider {
    static var previews: some View {
        XtrdRegisterEntList(registerEnt: RegisterEnt(registerEntName: "Bonjour"))
    }
}
