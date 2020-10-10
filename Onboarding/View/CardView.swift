//
//  CardView.swift
//  Onboarding
//
//  Created by Ahmed Serdah on 10/10/2020.
//

import SwiftUI

struct CardView: View {
    
    var title: String
    var headLine: String
    var imageNmae: String
    var gradientColor1: Color
    var gradientColor2: Color
    
    @State private var isAnimation: Bool = false
    
    var body: some View {
        
        ZStack {
            VStack(spacing:20){
                //Fruit: Image
                Image(imageNmae)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1 : 0.6)
                
                //Fruit: Title
                Text(title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Fruit: Head Line
                Text(headLine)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(minWidth: 480)
                    
                // Start Button
                StartButtonView()
                
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 5)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [gradientColor1, gradientColor2]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Title", headLine: "Head Line", imageNmae: "fruits_1",gradientColor1: .white,gradientColor2: .blue)
    }
}
