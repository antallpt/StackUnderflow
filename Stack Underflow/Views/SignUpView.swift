//
//  SignUpView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI
import Combine

struct SignUpView: View {
    
    @State var fullName = ""
    @State var birthday = ""
    @State var username = ""
    @State var email = ""
    @State var password = ""
    @State var password1 = ""
    
    @State var selected = false
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    ZStack(alignment: .leading) {
                        BackgroundRectView(height: UIScreen.main.bounds.height * 0.2)
                        
                        Text("Get \nstarted!")
                            .font(.system(size: 39, weight: .bold))
                            .padding(.leading, 25)
                            .padding(.top)
                    }
                    
                    VStack( alignment: .leading, spacing: 20) {
                        TextfieldView(text: "Full name", username: $fullName)
                            .padding(.top, 30)
                        
                        TextfieldView(text: "Date of birth", username: $birthday)
                        
                        TextfieldView(text: "Username", username: $username)
                        
                        TextfieldView(text: "Email", username: $email)
                        
                        SecureFieldView(text: "Password", password: $password)
                        
                        SecureFieldView(text: "Repeat password", password: $password1)
                        
                        HStack {
                            CheckBoxView(checked: $selected)
                            
                            Text("I agree to the")
                                .font(.system(size: 15, weight: .light))
                            
                            NavigationLink {
                                //
                            } label: {
                                Text("Terms and Conditions")
                                    .font(.system(size: 15, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color("DarkColor"))
                            }
                        }
                    }
                    
                    NavigationLink {
                        HomeView()
                            .navigationBarHidden(true)
                    } label: {
                        Button2View(text: "Sign Up")
                            .padding(.top, 50)
                    }

                    
                    NavigationLink {
                        LogInView()
                            .navigationBarHidden(true)
                        
                    } label: {
                        HStack {
                            Text("Already a member?  ")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .light))
                            
                            
                            Button {
                                presentationMode.wrappedValue.dismiss()
                            } label: {
                                Text("Sign In")
                                    .foregroundColor(Color("DarkColor"))
                                    .font(.system(size: 15, weight: .semibold))
                            }

                        }
                        
                    }
                    .padding()
                    
                    
                }
                .ignoresSafeArea()
            }
            .adaptsToKeyboard()
            .ignoresSafeArea()
        }
        
        .onTapGesture {
            hideKeyboard()
        }
    }
    
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
