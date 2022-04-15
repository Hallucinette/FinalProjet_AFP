//
//  Accueil.swift
//  ProjetAme
//
//  Created by Apprenant 55 on 08/12/2021.
//


/* Point clef pour comprendre le code :
    Structure :
    - Elles sont ranger dans le dossier structure. Chaqu un avec sont sous dossier (Finance et creation d'entreprise.)
    Image :
    - La fonction ImageHome est rangee dans le fichier du meme nom. Les photos sont dans le asset a taille differente.
*/

import SwiftUI

struct Accueil: View {
    
    @Binding var favorisList: [Favoris]
    @Binding var demarches: [Demarche]

    var imagequare = "" // Nom de la photo asset
    var textsquare = "" // Legende texte de la photo

//    private var financements = [
//            Financement(name: "Prêt"),
//            Financement(name: "Subvention"),
//            Financement(name: "Investisseur")
//
//            ]
    
   // private var creaEntreprises = [
    var creaEntreprises = [
        CreaEntreprise(creaname: "Quel type d'entreprise choisir ?"),
        CreaEntreprise(creaname: "Comment enregristrer son entreprise ?"),
        CreaEntreprise(creaname: "Quel prêt choisir?"),
        CreaEntreprise(creaname: "Subvention"),
        CreaEntreprise(creaname: "Investisseur")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)
                        .edgesIgnoringSafeArea(.all)
                    // donne la couleur grise au fond de l application.
                    //                    .navigationBarHidden(true)
                    VStack{
                        NavigationLink(destination: FileNews()){
                            Text("News")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .padding()
                            Image(systemName: "chevron.right")
                            
                        }
                        .padding()
                        HStack{
                            NavigationLink(destination: ArticleType()){
                                ImageHome(imagequare: "student", textsquare: "Les nouveaux étudiants entrepreneurs")
                            }
                            ImageHome(imagequare: "masque", textsquare: "Covid-19 : port du masque obligatoire")
                            ImageHome(imagequare: "justice", textsquare: "Alternance: Ce qui change en 2021")
                        }
                        
                        Text("Création entreprise")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .padding(.top)
                        
                        List(creaEntreprises) { creaentreprises in
                            if creaentreprises.creaname == "Quel type d'entreprise choisir ?"{
                                NavigationLink (destination: QuelTypeEntList()){
                                    creaEntreprise (creaentreprises: creaentreprises)
                                }
                            }else if creaentreprises.creaname == "Comment enregristrer son entreprise ?" {
                                NavigationLink (destination: RegisterEntList(favorisList: $favorisList, demarches: $demarches)){
                                    creaEntreprise (creaentreprises: creaentreprises)
                                }
                           }
                            else if creaentreprises.creaname == "Quel prêt choisir?" {
                                NavigationLink (destination: helloworld()){
                                    creaEntreprise (creaentreprises: creaentreprises)
                                }
                            }
                            else if creaentreprises.creaname == "Subvention" {
                                NavigationLink (destination: helloworld()){
                                    creaEntreprise (creaentreprises: creaentreprises)
                                }
                            }
                            else if creaentreprises.creaname == "Investisseur" {
                                NavigationLink (destination: helloworld()){
                                    creaEntreprise (creaentreprises: creaentreprises)
                                }
                            }
 
                        }
                        .padding()
                    }
                    .padding()
                }
                .frame(width: 400, height: 900)
            }
            .navigationBarHidden(true)
            .onAppear(perform: {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.darkGray]
            })
            
        }
        
    }
    
}

struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Accueil(favorisList: .constant([Favoris]()), demarches: .constant([Demarche]()))
                .previewDevice("iPhone 13")
        }
    }
}
