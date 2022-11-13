//  ContentView.swift
//  Shared
//
//  Created by Chenlu Wang on 11/3/22.
//
import Foundation

import SwiftUI

struct LoginScreen: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State var path = Tutorials()
    let horizontalPadding: CGFloat
    
    init(horizontalPadding: CGFloat = 8){
        self.horizontalPadding = horizontalPadding
    }

    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 1, green: 0.90, blue: 1.0)
                    .ignoresSafeArea()
                
                VStack{
                    Image("happyTree-1")
                        .padding(-45)
                    Text("Welcome back!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("username", text: $username)
                        .padding()
                        .frame(width:250, height:50)
                        .background(Color.white)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                        SecureField("password", text: $password)
                        .padding()
                        .frame(width:250, height:50)
                        .background(Color.white)
                        .padding()
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    NavigationLink("Login", destination: Tutorials().navigationBarBackButtonHidden(true))
                        .foregroundColor(.white)
                        .frame(width:120, height:50)
                        .background(Color.purple)
                        .cornerRadius(20)
//                    HStack {
//                        VStack {
//                            Divider()
//                            .background(Color.gray)
//
//                        }
//                        .padding(horizontalPadding)
////                        Text("Or").foregroundColor(.gray)
////                        VStack {
////                            Divider()
////                            .background(Color.gray)
////                        }
//                        .padding(horizontalPadding)
//                        }
//
//                    NavigationLink("Sign up", destination: Tutorials().navigationBarBackButtonHidden(true))
//                        .foregroundColor(.purple)
//                        .frame(width: 120, height:50)
//                        .background(Color.white)
//                        .cornerRadius(20)
                    }
            }

        }
        
    }
        
    func authenticateUser(username: String, password: String){
        if username.lowercased() == "anna"{
            wrongUsername = 0
            if password.lowercased() == "abc123"{
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
