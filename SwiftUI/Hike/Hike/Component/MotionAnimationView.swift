//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Andres Chango on 15/11/23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var ramdomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating = false
    func ramdomCordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    func ramdomSize() -> CGFloat {
        return CGFloat(Double.random(in: 0...80))
    }
    func ramdomScale() -> Double {
        return Double.random(in: 0...80)
    }
    func ramdomSpeed() -> CGFloat {
        return CGFloat.random(in: 0.05...1)
    }
    func ramdomDelay() -> CGFloat {
        return CGFloat.random(in: 0...2)
    }
    var body: some View {
        ZStack {
            ForEach(0...ramdomCircle, id: \.self){
                item in
                Circle().foregroundColor(.white)
                    .opacity(0.25).frame(width: ramdomSize())
                    .position(
                        x: ramdomCordinate(),
                        y: ramdomCordinate())
                    .scaleEffect(isAnimating ? ramdomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(ramdomSpeed())
                            .delay(ramdomDelay())
                        ){
                            isAnimating = true
                        }
                    }
                    )

            }

        }.frame(width: 256, height: 256)
            .mask(Circle()).drawingGroup()
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
    }
}
