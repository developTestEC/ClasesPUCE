//
//  ContentView.swift
//  TodoList
//
//  Created by Andres Chango on 21/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var descriptionNote = ""
    @StateObject var noteViewModel = NotesViewModel()
    var body: some View {
        NavigationView{
            VStack {
                Text("Añadir una tarea")
                    .underline()
                    .foregroundColor(.gray)
                    .padding(.horizontal, 16)
                TextEditor(text: $descriptionNote)
                    .foregroundColor(.gray)
                    .frame(height: 100)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.green, lineWidth: 2)
                    )
                    .padding(.horizontal, 12)
                    .cornerRadius(3)
                Button("Crear") {
                    noteViewModel.saveNote(description: descriptionNote)
                    descriptionNote = ""
                }
                .buttonStyle(.bordered)
                .tint(.green)
                Spacer()

                List {
                    ForEach(noteViewModel.notes, id: \.id){ nota in
                        HStack {
                            if nota.isFavorited {
                                Text("🤩")
                            }
                            Text(nota.description)
                        }

                    }
                }

            }
            .navigationTitle("TODO")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
