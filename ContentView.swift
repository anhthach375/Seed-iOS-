//
//  ContentView.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 10/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Tutorials()
        LoginScreen()
//        Profile()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct Home: View {
        var body: some View{
            Text("Welcome To Home!!!")
                .font(.title)
                .fontWeight(.heavy)
        }
    }
}
