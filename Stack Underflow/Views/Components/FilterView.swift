//
//  FilterView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct FilterView: View {
    var body: some View {
        ZStack {
            //Rectangle 5
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), lineWidth: 1)
            .frame(width: 80, height: 28)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            HStack {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.74)))
                    .padding(.leading, 5)
                
                //Filter
                Text("Filter").font(.system(size: 13, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.74))).multilineTextAlignment(.center)
            }
            .frame(width: 80, height: 28, alignment: .leading)
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
