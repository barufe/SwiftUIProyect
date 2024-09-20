//
//  TercerVista.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 15/08/24.
//

import SwiftUI

struct TercerVista: View {
    var texto : String
    var texto2 = ""
    
    var body: some View {
        Text(texto)
        //Text("Tercer vista")
        
        List(lista){item in
            NavigationLink(
                destination: VistaDetalle(item: item)){
                    HStack{
                        emoji(emoji: item)
                        Text(item.nombre)
                            .font(.subheadline)
                    }
                }
        }.navigationTitle("Lista")
    }
}

struct emoji: View {
    let emoji: Modelo
    var body: some View{
        ZStack{
            Text(emoji.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(
                    Circle().stroke(Color.purple, lineWidth: 3)
                )
        }
    }
}
