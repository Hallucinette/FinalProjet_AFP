//
//  CheckButton.swift
//  ApplicationProject
//
//  Created by Apprenant 47 on 09/12/2021.
//

import SwiftUI

struct CheckButton: View {
    
    @State private var check: String = "square"
    @State private var checkOut: Bool = false

    var body: some View {
    
        Button(action: {
            check = (checkOut ? "square" : "checkmark.square.fill")
            checkOut = (checkOut ? false : true)
        }, label: {
            Image(systemName: check)
                .foregroundColor(.black)
                .font(.title)
        })
    }
}

struct CheckButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckButton()
    }
}
