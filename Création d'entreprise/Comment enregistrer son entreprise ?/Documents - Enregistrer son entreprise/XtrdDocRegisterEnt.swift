//
//  XtrdDocRegisterEnt.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 13/12/2021.
//

import SwiftUI

struct XtrdDocRegisterEnt: View {
    
    var docRegisterEnt: DocRegisterEnt
    
    var body: some View {
        
        Text(docRegisterEnt.DocRegisterEntName)
    }
}

struct XtrdDocRegisterEnt_Previews: PreviewProvider {
    static var previews: some View {
        XtrdDocRegisterEnt(docRegisterEnt: DocRegisterEnt(DocRegisterEntName: "Bonjour"))
    }
}
