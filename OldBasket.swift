
//
//  ContentView.swift
//  Old-little-happiness
//
//  Created by Chenlu Wang on 11/12/22.
//

import Foundation
import SwiftUI

struct OldBasket: View {
    func buttonPressed(){
        print("button")
    }
    
    
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.90, blue: 1.0).ignoresSafeArea()
            
            VStack{
                Image("basket")
                    .resizable()
                    .frame(width:110, height: 120)
                
                Image("title")
                    .resizable()
                    .frame(width:300, height: 150)
                //            }
                    List{
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("A Korean store just opened nearby")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("Watch Hospital Playlist")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("Have a good score on Physics exam")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("Eat Batch’s Pitaschio")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("Eat chicken tenders")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        HStack (
                            alignment: .center,
                            spacing: 10){
                                Image("leaf")
                                    .resizable()
                                    .frame(width:40, height: 40)
                                    .offset(x: 0)
                                Text("First day of learning Spanish by myself")
                                    .font(.system(size:25, weight:.semibold))
                            }
                        
                    }
                    .scrollContentBackground(.hidden)
            }
        }
    }
    struct OldBasket_Previews: PreviewProvider {
        static var previews: some View {
            OldBasket()
        }
    }
}

