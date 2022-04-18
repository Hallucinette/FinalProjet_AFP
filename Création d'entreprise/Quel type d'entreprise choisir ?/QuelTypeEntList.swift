//
//  QuelTypeEntList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 10/12/2021.
//

import SwiftUI

struct QuelTypeEntList: View {
    
    var quelTypeEnts = [
        QuelTypeEnt(quelTypeEntName: "Je suis commercant"),
        QuelTypeEnt(quelTypeEntName: "Je suis etudiant"),
        QuelTypeEnt(quelTypeEntName: "Je suis salarié"),
        QuelTypeEnt(quelTypeEntName: "Les différents types d'entreprises"),
    ]
    
    var body: some View {
        
        // Here we do the navigation. if you chose one of them, they can have a diferent way. of course, this is just a prototype so,
        // we can go in just two different way : ToRegisterVehicle and ToDoEmployAnIntern.
        
        List(quelTypeEnts){quelTypeEnt in
            if quelTypeEnt.quelTypeEntName == "Je suis commercant"{
                NavigationLink(destination: ToDoRegisterVehicle()){
                    XtrdQuelTypeEntList (quelTypeEnt:quelTypeEnt)
                }
            } else if quelTypeEnt.quelTypeEntName == "Je suis etudiant"{
                NavigationLink(destination: ToDoRegisterVehicle()){
                    XtrdQuelTypeEntList (quelTypeEnt:quelTypeEnt)
                }
            } else if quelTypeEnt.quelTypeEntName == "Je suis salarié"{
                NavigationLink(destination: ToDoRegisterVehicle()){
                    XtrdQuelTypeEntList (quelTypeEnt:quelTypeEnt)
                }
            }else{
                NavigationLink(destination: ToDoEmployAnIntern()){
                    XtrdQuelTypeEntList (quelTypeEnt:quelTypeEnt)
                }
            }
        }
        .navigationBarTitle("QUEL TYPE D'ENTREPRISE CHOISIR ?")
    }
}

struct QuelTypeEntList_Previews: PreviewProvider {
    static var previews: some View {
        QuelTypeEntList()
    }
}
