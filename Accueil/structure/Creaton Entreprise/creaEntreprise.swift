//
//  creaEntreprise.swift
//  ProjetAme
//
//  Created by Apprenant 55 on 09/12/2021.
//

import SwiftUI

struct creaEntreprise: View {
    var creaentreprises: CreaEntreprise
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text(creaentreprises.creaname)
                    .font(.subheadline)
            }
        }
    }}

struct creaEntreprise_Previews: PreviewProvider {
    static var previews: some View {
        creaEntreprise(creaentreprises: CreaEntreprise(creaname: "France"))
    }
}
