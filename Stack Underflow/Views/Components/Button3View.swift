//
//  Button3.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct Button3View: View {
    var text = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 11)
                .fill(Color(#colorLiteral(red: 0.8156862854957581, green: 0.7215686440467834, blue: 0.6745098233222961, alpha: 1)))
            .frame(width: 119, height: 32)
            
            //Ask now
            Text(text).font(.system(size: 16, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
        }
    }
}

struct Button3_Previews: PreviewProvider {
    static var previews: some View {
        Button3View(text: "Ask now")
    }
}
