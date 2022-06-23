//
//  CustomSearchFieldView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct CustomSearchFieldView: View {
    
    var placeholder = ""
    
    @State var searchedText = ""
    
    var body: some View {
        //Rectangle 1
        
        
        ZStack {
            RoundedRectangle(cornerRadius: 13)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 335, height: 54)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            HStack {
                //Search “cryptocurrency”
                TextField(placeholder, text: $searchedText)
                    .frame(width: 280, height: 54)
                    .padding(.leading, 10)
                    .foregroundColor(Color.accentColor)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 18, weight: .medium))
                        .padding(.trailing)
                        .frame(height: 54)
                        .foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.74)))
                }

            }
            .frame(width: 335, height: 54, alignment: .leading)
        }
    }
}

struct CustomSearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSearchFieldView(placeholder: "Search")
    }
}
