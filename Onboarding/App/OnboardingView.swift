//
//  ContentView.swift
//  Onboarding
//
//  Created by Ahmed Serdah on 10/10/2020.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        TabView{
            CardView(title: "Title 1", headLine: "Head Line 1", imageNmae: "fruits_1",gradientColor1: .white,gradientColor2: .blue)
            CardView(title: "Title 2", headLine: "Head Line 2", imageNmae: "fruits_2",gradientColor1: .white,gradientColor2: .pink)
            
            CardView(title: "Title 3", headLine: "Head Line 3", imageNmae: "fruits_3",gradientColor1: .white,gradientColor2: .orange)
            
            CardView(title: "Title 4", headLine: "Head Line 4", imageNmae: "fruits_4",gradientColor1: .white,gradientColor2: .purple)
            
            CardView(title: "Title 5", headLine: "Head Line 5", imageNmae: "fruits_5",gradientColor1: .white,gradientColor2: .green)
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
