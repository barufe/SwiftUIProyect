//
//  TabViewMain.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 16/08/24.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem {
                Label("House", systemImage: "house.fill")
            }
            Vista2().tabItem {
                Label("Vista2", systemImage: "plus")
            }
            ContentView().tabItem {
                Label("Camara", systemImage: "camera")
            }
        }
    }
}

