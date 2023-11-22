//
//  ContentView.swift
//  PrimerSwiftUI
//
//  Created by Andres Chango on 6/11/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
            Image(systemName: "globe")
        }


    }
}
NavigationView {
    List {
        Label("Courses", systemImage: "book")
        Label("Tutorials", systemImage: "square")
    }
    .navigationTitle("Learn")
}

NavigationView {
        // List

    ContentView()
}
NavigationLink(destination: HomeView()) {
        Label("Courses", systemImage: "book")
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, IOS Clases!")
            Text("Esta es mi primera App con SwiftUI")
            FirstView()
            Button("Button") {
                print("Mi primer boton")
            }.padding([.top], 10)
            ZStack {
                Rectangle()
                    .fill(Color.blue).ignoresSafeArea()

                VStack {
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 44, height: 44)
                    Text("Meng To").bold()
                    Capsule()
                        .foregroundColor(Color.green)
                        .frame(height: 44)
                        .overlay(Text("Sign up"))
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
