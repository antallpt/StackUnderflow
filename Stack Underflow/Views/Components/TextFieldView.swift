//
//  TextfieldView.swift
//  Financial App
//
//  Created by Antal Lepetit on 29.05.22.
//

import SwiftUI

struct TextfieldView: View {
    var text = ""
    @Binding var username : String
    var body: some View {
        ZStack {

        //Rectangle 4
            RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.2800000011920929)))
            .frame(width: 280, height: 50)
            .overlay(TextField(text, text: $username)
                .padding(.leading, 13)
                .textContentType(.oneTimeCode)
                .disableAutocorrection(true))
            
            
            
        }
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView(text: "Text", username: .constant(""))
    }
}
