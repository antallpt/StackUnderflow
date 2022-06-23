//
//  LogInView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct LogInView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ScrollView(axes, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .leading) {
                        BackgroundRectView(height: UIScreen.main.bounds.height * 0.2)
                        
                        Text("Welcome!")
                            .font(.system(size: 39, weight: .bold))
                            .padding(.leading, 25)
                            .padding(.top)
                    }
                    
                    
                    VStack {
                        TextfieldView(text: "Enter username", username: $username)
                           
                        SecureFieldView(text: "Password", password: $password)
                            .padding(.top, 18)
                        
                        NavigationLink {
                            //
                        } label: {
                            Text("Recover Password").font(.system(size: 10, weight: .bold)).underline().foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.75))).tracking(-0.41).multilineTextAlignment(.trailing)
                                .frame(width: 280, alignment: .trailing)
                                .padding(.top, 10)
                        }

                    }
                    .padding(.top, 60)
                    
                    
                    HStack {
                        Image("Saly-26")
                        
                        Spacer()
                    }
                    
                    NavigationLink {
                        HomeView()
                            .navigationBarHidden(true)
                    } label: {
                        Button2View(text: "Sign In")
                            .padding(.top, 40)
                    }

                    NavigationLink {
                        SignUpView()
                            .navigationBarHidden(true)
                        
                    } label: {
                        HStack {
                            Text("Not a member?  ")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .light))
                            
                            
                            Text("Sign Up")
                                .foregroundColor(Color("DarkColor"))
                                .font(.system(size: 15, weight: .semibold))
                        }
                        
                    }
                    .padding()

                    
                    
                    
                }.ignoresSafeArea()
            }.ignoresSafeArea()
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
    private var axes: Axis.Set {
        []
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
