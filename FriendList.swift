//
//  FriendList.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/13/22.
//

import Foundation
import SwiftUI

struct FriendList: View{
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.90, blue: 1.0).ignoresSafeArea()
//        }
            VStack{
                Text("Your Friend List")
                    .font(.title)
                    .fontWeight(.semibold)
                    .kerning(1.4)
                    .padding()
                //            }
                List{
                    HStack (
                        alignment: .center,
                        spacing: 10){
                            Image("girl")
                                .resizable()
                                .frame(width:40, height: 40)
                                .offset(x: 0)
                            Text("   Clara")
                                .font(.system(size: 25))
                            
                            NavigationLink(destination: FriendTree2()){
                            }
                            
                            
                        }
                    HStack (
                        alignment: .center,
                        spacing: 10){
                            Image("boy")
                                .resizable()
                                .frame(width:40, height: 40)
                                .offset(x: 0)
                            Text("   Tayloe")
                                .font(.system(size: 25))
                            NavigationLink(destination: FriendTree1()){
                            }
                        }
                    
                    HStack (
                        alignment: .center,
                        spacing: 10){
                            Image("girl")
                                .resizable()
                                .frame(width:40, height: 40)
                                .offset(x: 0)
                            Text("   Suzy")
                                .font(.system(size: 25))
                            NavigationLink(destination: OldBasket()){
                            }
                        }
                    HStack (
                        alignment: .center,
                        spacing: 10){
                            Image("girl")
                                .resizable()
                                .frame(width:40, height: 40)
                                .offset(x: 0)
                            Text("   Wendy")
                                .font(.system(size: 25))
                            NavigationLink(destination: OldBasket()){
                            }
                        }
                }
                .scrollContentBackground(.hidden)
            }
                
        }
            
    }
    
    
    
    struct FriendList_Previews: PreviewProvider {
        static var previews: some View {
            FriendList()
            ContentView()
        }
    }
    
}
