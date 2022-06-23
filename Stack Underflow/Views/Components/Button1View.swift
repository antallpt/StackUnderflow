//
//  Button1View.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct Button1View: View {
    let text: String
    
    
    var body: some View {
        ZStack {
            //Rectangle 11
            RoundedRectangle(cornerRadius: 15)
                .stroke()
                .foregroundColor(Color("DarkColor"))
                .frame(width: 298, height: 49)
            
            
            //Sign In
            Text(text).font(.system(size: 20, weight: .thin)).multilineTextAlignment(.center)
                .foregroundColor(Color("DarkColor"))

        
        }
    }
}

struct Button1View_Previews: PreviewProvider {
    static var previews: some View {
        Button1View(text: "Sign In")
    }
}
