//
//  SwiftUIView.swift
//  ProjetFinal
//
//  Created by Apprenant 55 on 15/12/2021.
//

import SwiftUI

struct ArticleType: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("student")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
                Text("Les nouveaux étudiants entrepreneurs")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                HStack{
                    Text("\tLe statut national d'étudiant-entrepreneur permet aux étudiant(e)s et aux jeunes diplômé(e)s d'élaborer un projet entrepreneurial dans un PEPITE.  Le diplôme d'établissement \"étudiant-entrepreneur\" (D2E) accompagne le statut d'étudiant-entrepreneur : il permet de mener à bien son projet avec un maximum de sécurité et de visibilité.")
                        .padding()
                }
                Text("Conditions générales d'accès")
                    .font(.title3)
                    .fontWeight(.bold)
                    

                    
                Text("\tLe statut d'étudiant-entrepreneur s'adresse à toute personne titulaire du baccalauréat ou de son équivalence en niveau.")
                    .padding()
                Text("Bénéfices du statut")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text("\tLe statut permet d'avoir accès à des prestations délivrées dans le cadre du PEPITE : \n\tun accompagnement par un enseignant et un référent externe du réseau PEPITE (entrepreneur, réseaux d'accompagnement et de financement) \n\tun accès à l'espace de coworking du PEPITE ou d'un partenaire pour favoriser la mise en réseau des étudiants-entrepreneurs dans leur diversité et des partenaires praticiens du PEPITE \n\tpossibilité de signer un Contrat d'Appui d'Entreprise (CAPE) avec une structure type couveuse ou coopérative d'activité et d'emploi (CAE) ou un autre partenaire du PEPITE")
                    .padding()
                
                
                Text("Pour plus d'info : https://www.enseignementsup-recherche.gouv.fr/fr/statut-national-etudiant-entrepreneur-46412")
                    .font(.caption)
                    .padding()

            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleType()
    }
}
