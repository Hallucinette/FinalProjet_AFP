//
//  FileNews.swift
//  ProjetFinal
//
//  Created by Apprenant 55 on 13/12/2021.
//

import SwiftUI

struct FileNews: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("News")
                    .font(.largeTitle)                
                
                Spacer()
                
                Text("Top nouveatés")
                    .font(.title)
                    .foregroundColor(Color.gray)
                
                HStack{ Spacer()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 20) {
                            Spacer()
                            financeimage(myimage:"bitcoin", mytexte: "Bitcoin - La finance pour tous")
                            financeimage(myimage:"Business-plan", mytexte: "Les différentes Business-plan en 2021")
                            financeimage(myimage:"Entrepreuneur", mytexte: "Les risque de l'entreprenaria")
                            financeimage(myimage:"finance fructueux", mytexte: "Les risue de la finance!")
                            financeimage(myimage:"Robot", mytexte: "La robotique: un nouveaux buisnesse")
                        }
                    }
                }
                Spacer()
                
                Rectangle()
                    .frame(width: 390, height: 1)
                    .foregroundColor(Color.black)
                    .shadow(color: .black, radius: 3, x: 1, y: 3)
                
                VStack(spacing: 10) {
                    Text("Top nouveatés")
                        .font(.headline)
                        .foregroundColor(Color.gray)
                    finance_part_two(myimagetwo: "finance", mytextetwo: "Budget 2022: ce qu'a modifié le passage devant les députés ")
                    finance_part_two(myimagetwo: "Traiding", mytextetwo: "Le traidind une affaire fructueux sur l'avenire")
                    finance_part_two(myimagetwo: "Nouvelle médecine", mytextetwo:"Médecine un invetisement a ne pas manquer!")
                    finance_part_two(myimagetwo: "Entrepreuneuse seul", mytextetwo: "Entrepreuneuse est femme: Enquéte")
                    finance_part_two(myimagetwo: "Avion en papier", mytextetwo: "Les investisment a ne pas manquer en 2022")
                    
                }
                .padding()
            }
        }
        .frame(width: 400, height: 750)
    }
}
    
    struct FileNews_Previews: PreviewProvider {
        static var previews: some View {
            FileNews()
        }
    }
