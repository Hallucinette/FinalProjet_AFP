//
//  ProfileRow.swift
//  AppliEF
//
//  Created by Apprenant 57 on 09/12/2021.
//

import SwiftUI

struct ProfileRow: View {
    var nomCase : String
    var nomItem: String
    
    @State private var textModifier: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Text(nomCase)
                    .font(.title3)
                    .multilineTextAlignment(.trailing)
                TextField(nomItem, text: $textModifier)
                    .multilineTextAlignment(.trailing)
            }
        }
        
    }
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow(nomCase: "SIRET", nomItem: "String")
    }
}
