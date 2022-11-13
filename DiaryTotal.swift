//
//  DiaryTotal.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/13/22.
//

import Foundation
import SwiftUI



struct DiaryTotal: View {

    func buttonPressed(){

        print("button")

    }

    @EnvironmentObject var listViewModel: ListViewModel

    

    var body: some View {

        ZStack{

            Color.purple

                .opacity(0.2)

                .ignoresSafeArea()

            VStack {

                HStack(spacing: 70){

                    Image("diary")

                        .resizable()

                        .frame(width:120, height: 120)

                    

                    Text("Welcome to your diary")
                        .font(.system(size: 28))

                }
                .padding(.top, 30)

                

                List{

                    ForEach(listViewModel.items){ item in

                        ListRowView(item: item)

                    }

                     

                }
                .scrollContentBackground(.hidden)
                     

//                 NavigationLink("Let's see your soul tree", destination: Profile().navigationBarBackButtonHidden(true))
//
//
//                    .foregroundColor(.white)
//
//                    .font(.system(size: 15, weight:.heavy))
//
//                    .frame(width:250, height:60)
//
//                    .background(Color.purple)
//
//                    .cornerRadius(25)
//
//

            }

        }

    }

    

    

}

struct DiaryTotal_Previews: PreviewProvider {

    static var previews: some View {

        NavigationView{

            DiaryTotal()

        }

        .environmentObject(ListViewModel())

    }

        

}
