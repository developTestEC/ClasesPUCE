//
//  AplicationCell.swift
//  Hike
//
//  Created by Andres Chango on 27/11/23.
//

import SwiftUI

struct AplicationCell: View {
    // MARK ; - PROPERTIES
    @State var rowLabel : String
    @State var rowIcon : String
    @State var rowContent: String
    @State var rowTintColor : Color
    var body: some View {
        LabeledContent{
            Text(rowContent).foregroundColor(.primary).fontWeight(.heavy)
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8).frame(width: 30, height: 30).foregroundColor(rowTintColor)
                    Image(systemName: rowIcon).foregroundColor(.white).fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct AplicationCell_Previews: PreviewProvider {
    static var previews: some View {
        List{
            AplicationCell(rowLabel: "Application",
                           rowIcon: "apps.iphone", rowContent: "John Doe", rowTintColor: .pink)
        }
    }
}
