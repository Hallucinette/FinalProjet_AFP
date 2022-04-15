//
//  financeimage.swift
//  Finance app
//
//  Created by Apprenant 65 on 10/12/2021.
//

import SwiftUI

struct financeimage: View {
    var myimage : String
    var mytexte : String
    
    
    var body: some View {
        VStack {
            Image(myimage)
                .resizable()
                .cornerRadius(20)
                .frame(width: 315, height: 195)
                .shadow(color: .black, radius: 5, x: 1, y: 5)
            
            Text(mytexte)
                .font(.title3)
            
        }
        }
        //   .padding()
    }


struct financeimage_Previews: PreviewProvider {
    static var previews: some View {
        financeimage(myimage: "bitcoin", mytexte: "text")
    }
}

