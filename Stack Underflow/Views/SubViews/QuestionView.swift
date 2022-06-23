//
//  QuestionView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct QuestionView: View {
    
    @State var didLike = false
    @State var didComment = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .frame(width: 335, height: 140)
            .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
            
            VStack(alignment: .leading) {
                HStack {
                    Image("User 03C")
                    
                    Text("Viola Brooks").font(.system(size: 9, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.73)))
    
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.30000001192092896)))
                    .frame(width: 2, height: 2)
                    .rotationEffect(.degrees(180))
                    
                    //10h ago
                    Text("10h ago").font(.system(size: 5, weight: .light)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4)))
                        
                }
                .padding(.top, 10)
                .padding(.leading, 10)
                
                //Why has the cryptocurrency...
                Text("Why has the cryptocurrency market crashed so much after all the hype last week?").font(.system(size: 13, weight: .regular))
                    .padding(.horizontal, 10)
                    .padding(.top, 5)
                
                Spacer()
                
                HStack(spacing: 30) {
                    Button {
                        didLike.toggle()
                    } label: {
                        HStack(spacing: 5) {
                            
                                Image(systemName: "heart.fill")
                                    .font(.system(size: 13, weight: .medium)).foregroundColor(didLike ? Color(#colorLiteral(red: 0.85, green: 0.03, blue: 0.03, alpha: 0.69)) : Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.41)))
                            

                            
                            //1.4k
                            Text("1.4k").font(.system(size: 10, weight: .medium)).foregroundColor(didLike ? Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 1)) : Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.41))).multilineTextAlignment(.center)
                                .padding(.bottom, 1)
                        }
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }

                    
                    Button {
                        didComment.toggle()
                    } label: {
                        HStack(spacing: 5) {
                            
                            Image(systemName: "text.bubble")
                                .font(.system(size: 13, weight: .medium)).foregroundColor(didComment ? Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 1)) : Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.42)))
                            

                            
                            //1.4k
                            Text("376").font(.system(size: 10, weight: .medium)).foregroundColor(didComment ? Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 1)) : Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.41))).multilineTextAlignment(.center)
                                .padding(.bottom, 1)
                        }
                        .padding(.leading, 10)
                        .padding(.bottom, 8)
                    }

                }
                
                
            }.frame(width: 335, height: 124, alignment: .leading)
            
        }
        .frame(width: 335, height: 124, alignment: .leading)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
