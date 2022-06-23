//
//  GearView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct GearView: View {
    var body: some View {
        ZStack {

            RoundedRectangle(cornerRadius: 11)
            .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 40, height: 40)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
            .overlay {
                Image(systemName: "gear")
                    .font(.system(size: 18,weight: .medium))
            }

        }
    }
}

struct GearView_Previews: PreviewProvider {
    static var previews: some View {
        GearView()
    }
}
