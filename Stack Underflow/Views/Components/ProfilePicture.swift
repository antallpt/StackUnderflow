//
//  ProfilePicture.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct ProfilePicture: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .frame(width: 45, height: 45)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            Image("User 07b")
            
        }
    }
}

struct ProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture()
    }
}
