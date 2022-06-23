//
//  Button2View.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct Button2View: View {
    let text: String
    
    
    var body: some View {
        ZStack {
            //Rectangle 11
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("DarkColor"))
                .frame(width: 298, height: 49)
            
            
            //Sign In
            Text(text).font(.system(size: 20, weight: .thin)).multilineTextAlignment(.center)
                .foregroundColor(Color(.white))

        
        }
    }
}

struct Button2View_Previews: PreviewProvider {
    static var previews: some View {
        Button2View(text: "Sign In")
    }
}
