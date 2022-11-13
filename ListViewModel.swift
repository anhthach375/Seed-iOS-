//
//  ListViewModel.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 11/13/22.
//

import Foundation
import SwiftUI


class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = []

    init(){

        getItem()

    }

    func getItem(){

        let newItem = [

            ItemModel(emoji: "smiling face", title: "Eat mint oreo ice cream"),

            ItemModel(emoji: "loudly crying face", title: "Lost earrings"),

            ItemModel(emoji:"neutral face", title:  "A Vietnamese store just opens"),

            ItemModel(emoji: "loudly crying face", title: "No mint oreo at blanch")

        ]

        items.append(contentsOf: newItem)

    }

    func addItem(emoji: String, title: String){

        let newItem = ItemModel(emoji: emoji, title: title)

        items.append(newItem)

        

    }

}
