//
//  StartButtonView.swift
//  Onboarding
//
//  Created by Ahmed Serdah on 10/10/2020.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            print("Start")
        }){
            HStack(spacing: 8){
            Text("Start")
            Image(systemName: "arrow.right.circle")
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25 )
            )
            
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
    }
}
