//
//  Profile.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/6/22.
//

import Foundation
import SwiftUI


struct Profile: View{
    @State var selectedTab: Int = 0
    let background = Color(red: 1, green: 0.90, blue: 1.0)
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            YourSoulTree()
                .tabItem {
                    Image(systemName: "leaf")
                    Text("Your Tree")
                }
                .tag(0)
            DiaryTotal()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("Your Diary")
                }
                .tag(1)
            FriendList()
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Friends List")
                }
                .tag(2)
            AskingQuestion()
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Your Feeling")
                }
                .tag(3)
        }
        .accentColor(Color.purple)
        
    }
    
    
    struct YourSoulTree: View{
        @State var isAnimated: Bool = false
        @State private var animateLeaf1 = false

//        @State var addLeaf: Int = 0
        
        var body: some View{
            
            NavigationView {
                ZStack {
                    Color(red: 1, green: 0.90, blue: 1.0)
                        .ignoresSafeArea()
                    
                    VStack{
//                        Button(action: {SoundManager.instance.playSound()}){
//                            Image(systemName: "speaker")
//                        }
                        Button("Click here to see how your soul tree has changed"){
                            withAnimation(.default){
                                isAnimated.toggle()
                            }
                        }
                        .font(.system(size: 20, design: .rounded))
                        .fontWeight(.semibold)
                        .padding()
                        .kerning(1.2)
                        .frame(width: 320, height: 110)
                        .multilineTextAlignment(.center)
                        .background(Color.white)
                        .cornerRadius(15)
                        .foregroundColor(Color.purple)
                        
                        Image("yourSoulTree 2")
                            .frame(width: 550, height: 550)
                            .onTapGesture {
                                withAnimation(Animation.spring(response: 0.1, dampingFraction: 0.4, blendDuration: 3).speed(0.3).repeatForever(autoreverses: false)){
                                    animateLeaf1.toggle()
                                }
                            }
                            
                    }
                    .padding(.top)
                    
                    Image("add-leaf2")
                        .offset(x: isAnimated ? 10 : -500, y: isAnimated ? 15 : -500)
                        .offset(x: animateLeaf1 ? 10 : 12, y: animateLeaf1 ? 15 : 18)
                    
                    Image("add-leaf1")
                        .offset(x: animateLeaf1 ? -43 : -45, y: animateLeaf1 ? 53 : 55)
                    
                    Image("add-leaf3")
                        .offset(x: animateLeaf1 ? 71 : 74, y: animateLeaf1 ? 34 : 36)
                    
                    Image("add-leaf1")
                        .offset(x: animateLeaf1 ? 120 : 113, y: animateLeaf1 ? 100 : 102)
                    
                    Image("add-leaf2")
                        .offset(x: animateLeaf1 ? 157 : 160, y: animateLeaf1 ? 108 : 110)
                    
                    
                    NavigationLink(destination: OldBasket()){
                        ZStack{
                            Image("basket1")
                                .padding(.top, 500)
                                .padding(.trailing, -8000)
                                .padding(.maximum(10, -40))
                            
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle())
        }
        
        struct Profile_Previews: PreviewProvider {
            static var previews: some View {
                NavigationView{
                    Profile()
                }
                .environmentObject(ListViewModel())
            }
        }
    }
}

