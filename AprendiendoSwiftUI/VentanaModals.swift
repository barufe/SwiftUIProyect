//
//  VentanaModals.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 15/08/24.
//

import SwiftUI

struct VentanaModals: View {
    
    @Environment(\.presentationMode) var back
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            VStack{
                Text("Ventana modal")
                    .font(.title)
                    .foregroundStyle(.white)
                    .bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}
