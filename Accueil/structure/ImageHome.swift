//
//  ImageHome.swift
//  ProjetAme
//
//  Created by Apprenant 55 on 09/12/2021.
//

import SwiftUI

struct ImageHome: View {
    var imagequare: String
    var textsquare: String
    var body: some View {
        VStack{
            Image(imagequare)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(20)
            HStack{
                Text(textsquare)
                   // .font(.title3)
                    .frame(width: 120, height: 100)
                    .font(.body)
            }
        }
    }
}

struct ImageHome_Previews: PreviewProvider {
    static var previews: some View {
        ImageHome(imagequare: "student", textsquare: "Les nouveaux étudiants entrepreneurs")
    }
}
