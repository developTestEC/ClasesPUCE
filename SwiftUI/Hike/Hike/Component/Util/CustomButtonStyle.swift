//
//  CustomButtonStyle.swift
//  Hike
//
//  Created by Andres Chango on 15/11/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding().background(
// Coditional
            configuration.isPressed ? LinearGradient(colors: [.customSalmonLight, .customIndigoMedium], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.customGrayMediun, .customGrayLight], startPoint: .top, endPoint: .bottom)

        ).cornerRadius(40)
    }


}
