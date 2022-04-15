//
//  ModèleFact.swift
//  Prototype
//
//  Created by Apprenant 70 on 10/12/2021.
//

import SwiftUI

struct Mode_leFact: View {
    @State var flag: Bool = false
    @State var options: [(String, () -> Void)] = [
        ("Option - 1", { print("option1 selected")}),
        ("Option - 2", { print("option2 selected")}),
        ("Option - 3", { print("option3 selected")})
    ]
    
    
    var body: some View {
        
        
            

        
        VStack {
           
          Spacer()
          HStack {
            Spacer()
            Image("Facture")
                  .resizable()
                  .frame(width: 400, height: 400)
            Spacer()
          }
          Spacer()
        }.background(Color.gray)
            .navigationBarTitle("Modèle de facture")
           
            
        Button("option")  {
            self.flag = true
                            }
        .actionSheet(isPresented: self.$flag, content: {
            var buttons: [ActionSheet.Button] = options.map {
                ActionSheet.Button.default(Text($0.0), action: $0.1)
            }
            buttons.append(.cancel())

            return ActionSheet(title: Text("Select an option"), buttons: buttons)
        })


          }
        
        }
    

    

    

struct Mode_leFact_Previews: PreviewProvider {
    static var previews: some View {
        Mode_leFact()
    }
}
