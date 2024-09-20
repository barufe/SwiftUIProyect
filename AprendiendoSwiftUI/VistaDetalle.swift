//
//  VistaDetalle.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 19/08/24.
//

import SwiftUI

struct VistaDetalle: View {
    let item : Modelo
    var body: some View {
        VStack(alignment: .leading, spacing: 3, content: {
            HStack{
                emoji(emoji: item)
                Text(item.nombre).font(.largeTitle)
                Spacer()
            }
            Text(item.descripcion).padding(.top)
            Spacer()
            NavigationLink(destination: GridsList()){
               Text("Grids All")
            }
        })
        .padding(.all)
        .navigationTitle("Emojis")
    }
}

