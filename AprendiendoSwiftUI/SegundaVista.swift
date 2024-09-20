//
//  NavigationView.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 15/08/24.
//

import SwiftUI

struct SegundaVista: View {
    @State private var texto = ""
    @State private var show = false
    var body: some View {
        TextField("Ingresa el texto", text: $texto)
        
        Text("Segunda vista")
            .navigationTitle("Segunda navegación")
        NavigationLink(destination: TercerVista(texto: texto)){
            Text("Ir a tercera vista")
        }
                .toolbar(content: {
                    HStack{
                        Button{
                            print("Guardando...")
                        }label: {
                            Text("Guardar")
                        }
                        NavigationLink(destination: TercerVista(texto: texto)){
                            Image(systemName: "plus")
                        }
                        NavigationLink(destination: regularDesing()){
                            Image(systemName: "camera")
                        }
                    }
                })
        
    }
}

#Preview {
    SegundaVista()
}
