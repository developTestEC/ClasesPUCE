//
//  ContentView.swift
//  Hike
//
//  Created by Andres Chango on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet = false
    // MARK: - FUNCTIONS
    func ramdomImage() {
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    var body: some View {
        //MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack{
                // MARK : - HEADER
                VStack(alignment: .leading){


                    HStack {
                        Text("Hiking").fontWeight(.black).font(.system(size: 52)).foregroundStyle(
                            LinearGradient(colors: [.customGrayLight,.customGrayMediun], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button {
                            isShowingSheet.toggle()
                        }label: {
                            CustomButton()
                        }.sheet(isPresented: $isShowingSheet){
                            SettingsView().presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                    }


                    Text("Fun and enjoyable outdoor activity for friends and familes.").multilineTextAlignment(.leading).italic().foregroundColor(.customGrayMediun)
                    ///: HEADER
                }.padding(.horizontal,30)


                
                // MARK: - MAIN CONTENT
                ZStack{

                    CustomCircleView()
                    Image("image-\(imageNumber)").resizable().scaledToFit()
                }
                Button(action: {
                    ramdomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(
                            colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                }).buttonStyle(GradientButton())
            }
        }.frame(width: 320 ,height: 570)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
