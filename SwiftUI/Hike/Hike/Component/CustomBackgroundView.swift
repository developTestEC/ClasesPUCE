//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Andres Chango on 14/11/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            Color.customGreenDark.cornerRadius(40).offset(y:12)
            Color.customGreenLight.cornerRadius(40).offset(y:3).opacity(0.85)

            LinearGradient(colors: [Color.customGrayLight,
                                    Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView().padding()
    }
}
