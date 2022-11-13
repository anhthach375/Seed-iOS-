//
//  FriendTree.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/13/22.
//

import Foundation
import SwiftUI


struct FriendTree1: View{
    @State private var share = ""
    
    var body: some View{
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.90, blue: 1.0)
                    .ignoresSafeArea()
                VStack{
                    Text("Tayloe's Tree")
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.semibold)
                        .padding()
                        .kerning(1.2)
                        .frame(width: 200, height: 80)
                        .multilineTextAlignment(.center)
                        .background(Color.white)
                        .cornerRadius(15)
                        .foregroundColor(Color.purple)
                    
                    Image("Tayloe's Tree")
                        .scaledToFill()
                    
                    TextField("Write something to Tayloe", text: $share)
                        .padding()

                        .multilineTextAlignment(.center)

                        .frame(width: 300, height: 100)

                        .background(Color.white)

                        .cornerRadius(20)

                    
                    Button("Send"){

                    }

                    .foregroundColor(.white)

                    .frame(width: 120, height: 40)

                    .background(Color.purple)

                    .cornerRadius(20)
                    
                }
            }
        }
    }
}

struct FriendTree2: View{
    @State private var share = ""

    var body: some View{
        NavigationView {
            ZStack {
                Color(red: 1, green: 0.90, blue: 1.0)
                    .ignoresSafeArea()
                VStack{
                    Text("Clara's Tree")
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.semibold)
                        .padding()
                        .kerning(1.2)
                        .frame(width: 320, height: 110)
                        .multilineTextAlignment(.center)
                        .background(Color.white)
                        .cornerRadius(15)
                        .foregroundColor(Color.purple)
                    
                    Image("happyTree-1")
                        .scaledToFill()
                    
                    TextField("Write something to Clara", text: $share)
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(width: 300, height: 100)
                        .background(Color.white)
                        .cornerRadius(20)

                    
                    Button("Send"){

                    }

                    .foregroundColor(.white)
                    .frame(width: 120, height: 40)
                    .background(Color.purple)
                    .cornerRadius(20)
                    
                    
                }
            }
        }
    }
}

    struct FriendTree_Previews: PreviewProvider {
        static var previews: some View {
            FriendTree1()
            FriendTree2()
        }
    }
