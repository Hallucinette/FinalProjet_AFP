//
//  ProfileView.swift
//  AppliEF
//
//  Created by Apprenant 57 on 09/12/2021.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var birthDate = Date()

    @State private var  showAddView = false
    @State private var showAddSheet = false
    
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Button {
                        showAddSheet.toggle()
                    } label: {
                        Image(systemName: "person.badge.plus")
                            .font(.system(size: 70))
                            .padding(.top)
                            .foregroundColor(.secondary)
                            .scaledToFit()
                    }
                    .sheet(isPresented: $showAddSheet) {
                        PageDetailse()
                    }
                }
                .padding()
                
                Text("Modifer")
                VStack{
                    Spacer()
                    Form{
                        ProfileRow(nomCase: "SIRET", nomItem: "09274081928")
                        ProfileRow(nomCase: "SIREN", nomItem: "09787975865R")
                        ProfileRow(nomCase: "C.A. de l'année", nomItem: "05099898")
                        ProfileRow(nomCase: "Nombre d'employé", nomItem: "192220")
                        ProfileRow(nomCase: "Adress postal", nomItem: "10 Rue Ventôse Parc les vieux")
                        HStack{
                            Text("Date de création")
                                .font(.title3)
                            DatePicker(selection: $birthDate, displayedComponents: .date) {
                            }
                        }
                    }
                }
            }
            .onAppear(perform: {
                UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20, weight: .semibold), NSAttributedString.Key.foregroundColor : UIColor.darkGray]
            })
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .previewInterfaceOrientation(.portrait)
        
    }
}
