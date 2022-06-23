//
//  SecureFieldView.swift
//  Financial App
//
//  Created by Antal Lepetit on 29.05.22.
//

import SwiftUI

struct SecureFieldView: View {
    var text = ""
    @Binding var password : String
    var body: some View {
        ZStack {

        //Rectangle 4
            RoundedRectangle(cornerRadius: 10)
            .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 0.2800000011920929)))
            .frame(width: 280, height: 50)
            .overlay(SecureField(text, text: $password)
                .padding(.leading, 13)
                .textContentType(.oneTimeCode)
                .disableAutocorrection(true))
            
            
            
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView(text: "Text", password: .constant(""))
    }
}
