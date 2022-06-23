//
//  ProfilePicture2.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct ProfilePicture2: View {
    var body: some View {
        //Rectangle 3
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(#colorLiteral(red: 0.9843137264251709, green: 0.9960784316062927, blue: 0.9843137264251709, alpha: 1)))
        .frame(width: 98, height: 98)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
        .overlay {
            Image("User 07c")
        }
    }
}

struct ProfilePicture2_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePicture2()
    }
}
