//
//  ProfileView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 22.06.22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var myQuestions = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(LinearGradient(
                                gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.7791666388511658, green: 0.7791666388511658, blue: 0.7791666388511658, alpha: 1)), location: 0.1927083283662796),
                            .init(color: Color(#colorLiteral(red: 0.7791666388511658, green: 0.7791666388511658, blue: 0.7791666388511658, alpha: 0)), location: 0.3541666567325592)]),
                                startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
                                endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999)))
                    .frame(width: 375, height: UIScreen.main.bounds.height * 0.9)
                    .ignoresSafeArea()
                    
                    VStack {
                        HStack {
                            Spacer()
                            ProfilePicture2()
                                .padding(.top, 70)
                            
                            GearView()
                                .padding()
                                .frame(width: (UIScreen.main.bounds.width / 2) - 59, alignment: .trailing)
                        }
                        
                        Text("Antal Lepetit").font(.system(size: 20, weight: .semibold)).multilineTextAlignment(.center)
                            .padding(.top, 15)
                            .padding(.bottom, 1)
                        
                        Text("@antal.lpt").font(.system(size: 15, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.82, green: 0.72, blue: 0.67, alpha: 1))).multilineTextAlignment(.center)
                        
                        Text("Hi, I’m Antal and im 18 years old. Im currently interested in coding and desgining :)").font(.system(size: 15, weight: .light)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.63))).multilineTextAlignment(.center)
                            .frame(width: 206, height: 60, alignment: .center)
                            
                        
                      
                        
                        //Rectangle 4
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color(#colorLiteral(red: 0.9372549057006836, green: 0.8980392217636108, blue: 0.8627451062202454, alpha: 1)))
                            .frame(width: 375, height: 410)
                            
                            VStack {
                                HStack(spacing: 30) {
                                    //My Questions
                                    VStack(spacing: 3) {
                                        Button {
                                            myQuestions = true
                                        } label: {
                                            Text("My Questions").font(.system(size: 20, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.73)))
                                        }

                                        //Rectangle 15
                                        RoundedRectangle(cornerRadius: 2)
                                            .fill(myQuestions ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.73)) : .clear)
                                        .frame(width: 100, height: 2)
                                    }
                                    
                                    
                                    //Rectangle 14
                                    Rectangle()
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .frame(width: 2, height: 36)
                                    
                                    
                                    //My Answers
                                    VStack(spacing: 3) {
                                        Button {
                                            myQuestions = false
                                        } label: {
                                            Text("My Answers").font(.system(size: 20, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.73)))
                                        }

                                        
                                        //Rectangle 15
                                        RoundedRectangle(cornerRadius: 2)
                                            .fill(myQuestions ? .clear : Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.73)) )
                                        .frame(width: 100, height: 2)
                                    }
                                }
                                .padding(.top, 25)
                                
                                CustomSearchFieldView(placeholder: myQuestions ? "Search Question" : "Search Answer")
                                    .padding(.top, 10)
                                
                                
                                if myQuestions {
                                    MyQuestionView()
                                    MyQuestionView()
                                } else {
                                    QuestionView()
                                    QuestionView()
                                }
                                
                                Spacer()
                            }
                        }
                    }
                    
                    
                }.ignoresSafeArea()
                
                HStack(alignment: .center, spacing: 70) {
                    
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "house.fill")
                            .font(.system(size: 25, weight: .medium))
                            .foregroundColor(.gray)
                    }

                    

                    
                    NavigationLink {
                        HomeView()
                            .navigationBarHidden(true)
                            
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 40, weight: .medium))
                            .foregroundColor(Color("DarkColor"))
                    }
                    
                

                    
    
                    Image(systemName: "person.fill")
                        .font(.system(size: 25, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 1)))
                            
                    

                    
                }.padding(.top, 5)
            }
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
        
    }

}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
