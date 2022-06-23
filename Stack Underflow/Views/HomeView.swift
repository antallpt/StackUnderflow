//
//  HomeView.swift
//  Stack Underflow
//
//  Created by Antal Lepetit on 21.06.22.
//

import SwiftUI

struct HomeView: View {
    
    @State var showSheet = false

    
    
    var body: some View {
        NavigationView {
            ScrollView(axes, showsIndicators: false) {
                ZStack {
                    VStack {
                        
                        ZStack(alignment: .top) {
                            BackgroundRectView(height: UIScreen.main.bounds.height * 0.9)
                              
                            VStack {
                                HStack {
                                    Text("Discover")
                                        .font(.system(size: 30, weight: .bold))
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: ProfileView()) {
                                        ProfilePicture()
                                    }


                                }
                                .padding(.horizontal, 20)
                                .padding(.top, 60)
                                
                                VStack {
                                    CustomSearchFieldView(placeholder: "Search “cryptocurrency”")
                                        .padding(.top)
                                        .ignoresSafeArea(.keyboard)
                                    
                                    
                                    HStack {
                                        Button {
                                            //
                                        } label: {
                                            FilterView()
                                        }

                                        
                                        Spacer()
                                        
                                        
                                        Button {
                                            //
                                        } label: {
                                            Text("See all").font(.system(size: 13, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.11, green: 0.11, blue: 0.12, alpha: 0.74)))
                                        }

                                    }
                                
                                .padding(.vertical, 13)
                                    
                                    
                                    VStack(spacing: 28) {
                                        QuestionView()
                                        QuestionView()
                                        QuestionView()
                                    }
                                    .padding(.top, 15)
                                }
                                .frame(width: 335)
                            }
                        }
                    
                    
                        HStack(alignment: .center, spacing: 70) {
                            
                            Image(systemName: "house.fill")
                                .font(.system(size: 25, weight: .medium))
                            
                            Button {
                                showSheet.toggle()
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 40, weight: .medium))
                                    .foregroundColor(Color("DarkColor"))
                            }
                            .halfSheet(showSheet: $showSheet) {
                                VStack(alignment: .leading) {
                                    
                                    HStack {
                                        Text("Categories")
                                            .font(.system(size: 20, weight: .semibold))
                                            .padding(.top)
                                        
                                        Spacer()
                                    }
                                    .onTapGesture {
                                        hideKeyboard()
                                    }
                                    .padding(.top, 40)
                                    
                                    CustomSearchFieldView(placeholder: "Select category")
                                        
                                    
                                    
                                    HStack {
                                        Text("Question")
                                            .font(.system(size: 20, weight: .semibold))
                                        
                                        
                                    }
                                    .padding(.top, 10)
                                    
                                    
                                    CustomSearchFieldView(placeholder: "What do you want to ask?")
                                    
                                    
                                    Spacer()
                                    
                                    HStack(alignment: .bottom) {
                                        Button {
                                            showSheet.toggle()
                                        } label: {
                                            Button3View(text: "Ask now")
                                                .padding(.bottom, 20)
                                        }

                                        
                                        Image("Saly-13")
                                    }
                                    

                                }
                                .padding(.horizontal, 20)
                                .ignoresSafeArea()
                            } onEnd: {
                                //
                            }
                            

                            
                            NavigationLink {
                                ProfileView()
                                    .navigationBarHidden(true)
                            } label: {
                                Image(systemName: "person.fill")
                                    .font(.system(size: 25, weight: .medium))
                                    .foregroundColor(.gray)
                            }

                            
                        }.padding(.top, 5)
                    }
                    
                    
                    
                }.ignoresSafeArea()
                
            }
            .ignoresSafeArea()
                
        }
    }
    
    private var axes: Axis.Set {
        []
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



