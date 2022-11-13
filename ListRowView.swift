//
//  ListRowView.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/13/22.
//

import Foundation
import SwiftUI

struct ListRowView: View {

    let item: ItemModel

    var body: some View {

        HStack (

            alignment: .center,

            spacing: 10){

                Image(item.emoji)

                    .resizable()

                    .frame(width:40, height: 40)

                    .offset(x: 0)

                Text(item.title)

                    .font(.system(size: 20))

            }

        

    }

}



struct MyView_Previews: PreviewProvider {

    static var item1 = ItemModel(emoji: "smiling face", title: "Eat mint oreo ice cream")

    static var item2 = ItemModel(emoji: "loudly crying face", title: "Lost earrings")

    static var previews: some View {

        Group {

            ListRowView(item: item1)

            ListRowView(item: item2)

        }

    }

}
