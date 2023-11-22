//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Andres Chango on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    var body: some View {
        VStack {
//            incrbuementar contador
            Button("(\(count))"){
                count += 1
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
