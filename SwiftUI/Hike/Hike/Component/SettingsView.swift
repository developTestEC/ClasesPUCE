//
//  SettingsView.swift
//  Hike
//
//  Created by Andres Chango on 15/11/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section {
                HStack {
                    Spacer()
                    // MARK: - SECTION HEADER
                    Image(systemName: "laurel.leading").font(.system(size: 66, weight: .black))
                    VStack(spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        Text("Editor`s Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing").font(.system(size: 66, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors:[.customGrayLight,.customSalmonLight] , startPoint: .top, endPoint: .bottomTrailing))
                VStack{
                    Text("Where can you find \nperfect tracks?").font(.title2).fontWeight(.heavy)
                    Text("dhgfljhasgdkfhgasdhfgdskajgfkjagdfjhdgasjfhgsajkhdgfjksagkfjdsakj").font(.footnote).italic()
                }.multilineTextAlignment(.center).padding(.bottom,16)
            }.listRowSeparator(.hidden)
            // MARK: - SECTION ICON

            // MARK: - SECTION ABOUT
        }//: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
