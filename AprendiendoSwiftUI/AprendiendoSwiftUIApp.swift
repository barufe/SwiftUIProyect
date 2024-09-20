//
//  AprendiendoSwiftUIApp.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 3/08/24.
//

import SwiftUI

@main
struct AprendiendoSwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @Environment(\.scenePhase) var scenePhase
    
    
    init(){
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            TabViewMain()
        }.onChange(of: scenePhase) { (phase) in
            switch phase {
                case .active:
                    print("Esta activo")
                case .inactive:
                    print("Esta inactivo")
                case .background:
                    print("Esta en background")
                @unknown default:
                    fatalError("algo salio mal")
            }
        }
    }
    func inicio(){
        print("Es el primero en ejecutarse")
    }
}
