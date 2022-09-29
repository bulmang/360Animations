//
//  ContentView.swift
//  360Animation
//
//  Created by 하명관 on 2022/09/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            RoundedRectangle(cornerRadius: isAnimating ? 50 : 25)
                .frame(width: isAnimating ? 300 : 0 , height : isAnimating ? 360 : 0 )
                .animation(.spring(), value:  isAnimating)
                .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                .foregroundColor(isAnimating ? .orange : .blue)
            
            Button("버튼을 눌러주세요.") {
                withAnimation(Animation.default) {
                    isAnimating.toggle()
                }
            }
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .cornerRadius(10)
            .fontWeight(.bold)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
