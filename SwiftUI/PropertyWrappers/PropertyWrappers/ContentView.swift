//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by Andres Chango on 21/11/23.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var count = 0
    @State private var userName  = ""
    var body: some View {
        VStack {
//            incrbuementar contador
            Button("(\(count))"){
                count += 1
            }
            TextField("UserName", text: $userName)
                .keyboardType(.emailAddress)
                .onReceive(Just(userName)) { newValue in
                                let filtered = newValue.filter { "0123456789".contains($0) }
                                if filtered != newValue {
                                    self.userName = filtered
                                }
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
