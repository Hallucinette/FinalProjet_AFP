//
//  finance-part-two.swift
//  Finance app
//
//  Created by Apprenant 65 on 10/12/2021.
//

import SwiftUI

struct finance_part_two: View {
    var myimagetwo : String
    var mytextetwo : String
  
    
    var body: some View {
        
        HStack {
            Image(myimagetwo)
                .resizable()
                .cornerRadius(20)
                .frame(width: 185, height: 125)
            VStack(alignment: .leading) {
            Text(mytextetwo)
                    .font(.headline)
                
    }
  }
}

struct finance_part_two_Previews: PreviewProvider {static var previews: some View {
    finance_part_two(myimagetwo: "finance", mytextetwo: "text")
        
    }
  }
}

