//
//  XtrdRegisterVehicleList.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import SwiftUI

struct XtrdOneDemarche: View {

    var oneDemarche: OneDemarche
    var button: CheckButton = CheckButton()

    var body: some View {
        
        VStack(alignment: .leading){

            HStack(spacing: oneDemarche.tab ? 40 : 0){
                
                Text("")
                
                VStack(alignment: .leading){
                    
                    if oneDemarche.attachDoc {
                        Text("Documents à joindre")
                            .foregroundColor(.gray)
                            .padding(.bottom, 10)
                    }
                    
                    HStack{
                        button
                        Text(oneDemarche.step)
                            .font(.title2)

                    }
                }
            }
        }
        .listRowSeparator(oneDemarche.groupAttachDoc ?  .hidden : .visible)
        .padding(5)
    }
}

struct XtrdOneDemarche_Previews: PreviewProvider {
    static var previews: some View {
        XtrdOneDemarche(oneDemarche: OneDemarche(step: "bonjour a tous",tab: true, attachDoc: true))
    }
}
