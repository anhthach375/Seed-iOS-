//
//  Happy_TreeApp.swift
//  Happy Tree
//
//  Created by Thach Quynh Anh on 10/30/22.
//

import SwiftUI

@main
struct Happy_TreeApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
//            ContentView()
            NavigationView {
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}
