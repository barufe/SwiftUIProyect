//
//  GridsList.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 19/08/24.
//

import SwiftUI

struct GridsList: View {
    
    //Se adapta a la medida que le envias, tienes que modificar tambien el tamaño del item por que si no se deforma
    let gridItem = [
        GridItem(.adaptive(minimum: 100))]
    
    //Se adapta a los iten que quieras mostrar por filas, es mas util
    let gridItem2 : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        NavigationView{
            //Se selecciona si es horinzontal o vertical, si es HGrid o VGrid, si es rows o columns
            ScrollView(.horizontal){
                LazyHGrid(rows: gridItem2, spacing: 30 ){
                    ForEach(lista){ item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                }
            }.navigationTitle("Grids")
        }
    }
}

#Preview {
    GridsList()
}
