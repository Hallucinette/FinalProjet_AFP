//
//  SwiftUIView.swift
//  Prototype
//
//  Created by Apprenant 70 on 14/12/2021.
//


import SwiftUI

struct Devis: View {
 
    var body: some View {

        VStack {
            
           Spacer()
            
            HStack {
              
            Spacer()
              
            Image("Devis")
                  .resizable()
                  .frame(width: 400, height: 400)
              
            Spacer()
              
            }
            
          Spacer()
            
        }
        .background(Color.gray)
        .navigationBarTitle("Devis")
    }
}

struct Devis_Previews: PreviewProvider {
    static var previews: some View {
        Devis()
    }
}
