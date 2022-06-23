//
//  MyQuestionView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct MyQuestionView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 335, height: 124)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            VStack(alignment: .leading) {
                
                
                //Why has the cryptocurrency...
                Text("Why has the cryptocurrency market crashed so much after all the hype last week?").font(.system(size: 13, weight: .regular))
                    .padding(.horizontal, 10)
                    .padding(.top, 25)
                
                Spacer()
                
                HStack(spacing: 30) {
                    HStack(spacing: 5) {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 13, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.85, green: 0.03, blue: 0.03, alpha: 0.69)))
                        
                        //1.4k
                        Text("1.4k").font(.system(size: 10, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.41))).multilineTextAlignment(.center)
                            .padding(.bottom, 1)
                    }
                    .padding(.leading, 10)
                    .padding(.bottom, 15)
                    
                    HStack(spacing: 5) {
                        Image(systemName: "text.bubble")
                            .font(.system(size: 13, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.42)))
                        
                        //1.4k
                        Text("376").font(.system(size: 10, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.41))).multilineTextAlignment(.center)
                            .padding(.bottom, 1)
                    }
                    .padding(.leading, 10)
                    .padding(.bottom, 15)
                }
                
                
            }.frame(width: 335, height: 124, alignment: .leading)
            
        }
        .frame(width: 335, height: 124, alignment: .leading)
    }
}

struct MyQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        MyQuestionView()
    }
}
