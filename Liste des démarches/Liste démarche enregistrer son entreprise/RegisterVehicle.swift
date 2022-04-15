//
//  RegisterVehicule.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import Foundation

struct OneDemarche: Identifiable{
    
    let id = UUID()
    var step: String
    var tab: Bool = false
    var attachDoc: Bool = false
    var groupAttachDoc: Bool = false
}
