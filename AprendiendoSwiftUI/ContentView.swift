//
//  ContentView.swift
//  AprendiendoSwiftUI
//
//  Created by Belkis Arufe on 3/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    
    var body: some View {
        if sizeClass == .compact {
            compactDesing()
        } else {
            regularDesing()
        }
    }
}

struct compactDesing: View {
    let number = "1000000000"
    let message = "Hola como estas?"
    @State private var show = false
    func sendMessage() {
        let sms = "sms:\(number)&body=\(message)"
        guard let strinSMS = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {return}
        UIApplication.shared.open(URL.init(string: strinSMS)!, options: [:], completionHandler: nil)
    }
    func sendCall(){
        guard let number = URL(string: "tel://\(number)") else {return}
        UIApplication.shared.open(number)
    }
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.green.ignoresSafeArea(.all)
                VStack(){
                    Image(systemName: "person.crop.circle").font(.system(size: 100, weight: .bold)).foregroundColor(.blue)
                    Text("Maria Ramirez")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.white)
                    Text("Calle #123")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .italic()
                    HStack{
                        Button(action: {
                            sendCall()
                        }){
                            Image(systemName: "phone.fill")
                                .modifier(boton(color: .red))
                            
                        }
                        Button(action: {
                            sendMessage()
                        }){
                            Image(systemName: "message.fill")
                                .modifier(boton(color: .blue))
                            
                        }
                    }
                    Button("Abrir modal"){
                        show.toggle()
                        print(show)
                    }
                    .sheet(isPresented: $show) {
                        VentanaModals()
                    }
                    NavigationLink(destination: SegundaVista()){
                        Text("Segunda vista")
                    }
                }
                
            }
        }.navigationTitle("Navegación")
    }
}

struct boton: ViewModifier{
    var color: Color
    func body(content: Content) -> some View {
        content
            .padding()
            .background(color)
            .clipShape(.circle)
            .foregroundColor(.white)
            .font(.title)
    }
}

struct regularDesing: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.all)
            HStack(){
                Image(systemName: "person.crop.circle").font(.system(size: 100, weight: .bold)).foregroundColor(.blue)
                VStack(alignment: .leading, spacing: 10) {
                    Image(systemName: "person.crop.circle")
                    Text("Maria Ramirez")
                        .foregroundStyle(.white)
                    Text("Calle #123")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .italic()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
