//
//  BackgroundRectView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct BackgroundRectView: View {
    
    let height: CGFloat

    
    var body: some View {
        
        //Rectangle 4
        //Rectangle 4
        Rectangle()
            .cornerRadius(50, corners: [.bottomLeft, .bottomRight])
            .foregroundColor(Color("MainColor"))
        .frame(height: height)
        .frame(maxWidth: .infinity)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
        .ignoresSafeArea()
    }
}

struct BackgroundRectView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRectView(height: 486)
    }
}
