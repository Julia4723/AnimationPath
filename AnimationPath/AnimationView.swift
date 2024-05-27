//
//  AnimationView.swift
//  AnimationPath
//
//  Created by user on 26.05.2024.
//

import SwiftUI

struct AnimationView: View {
    @State private var awardIsShowing = false
    @State private var circleColor = false
    @State private var heartColor = false
    
    var body: some View {
        HStack {
            ZStack {
                
                Circle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(circleColor ? .white : .red)
                    .offset(y: 267)
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(circleColor ? .red : .white)
                    .scaleEffect(CGSize(width: 0.18, height: 0.09))
                    .offset(y: 270)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.3,  blendDuration: 0.3)) {
                            self.circleColor.toggle()
                            
                            // circleColor.toggle()
                            awardIsShowing.toggle()
                        }
                    }
                
                
                if awardIsShowing {
                    
                    PathView()
                        .frame(width: 400, height: 400)
                        .animation(.easeOut, value: awardIsShowing)
                }
                
            }
        }
        
    }
    
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
        
    }
}
