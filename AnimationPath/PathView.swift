//
//  ContentView.swift
//  AnimationPath
//
//  Created by user on 26.05.2024.
//

import SwiftUI

struct PathView: View {
    var body: some View {
            ZStack {
                GeometryReader { geometry in
                    let width = geometry.size.width
                    let hight = geometry.size.height
                    let size = min(width, hight)
                    let middle = size / 2.4
                    let nearLine = size / 400
                    let farLine = size * 0.8
                    
                    Rectangle()
                        .fill(
                            LinearGradient (
                                gradient: Gradient(colors: [.pink, .blue]),
                                startPoint: UnitPoint(x: 2, y: 0),
                                endPoint: UnitPoint(x: 2, y: 1)
                            )
                            .opacity(0.5)
                        )
                    
                    
                    Image(systemName: "sun.horizon.fill")
                        .resizable()
                        .foregroundColor(.yellow)
                        .scaleEffect(CGSize(width: 1, height: 0.6))
                        .scaleEffect(0.7)
                        .offset(x: size / 5.8, y: size / 4.5)
                        .opacity(0.7)
                        .padding()
                    
                    Image(systemName: "moon.stars.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(12))
                        .scaleEffect(0.2)
                        .offset(x: size / -3, y: size / -3)
                        .opacity(0.7)
                        .padding()
                    
                    Image(systemName: "smoke.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .scaleEffect(CGSize(width: 0.4, height: 0.3))
                        .scaleEffect(0.9)
                        .offset(x: size / 4, y: size / -3)
                        .opacity(0.5)
                        .padding()
                    
                    
                    Rectangle()
                        .size(CGSize(width: size, height: size / 6))
                        .offset(y: size / 1.2)
                        .fill(Gradient(colors: [.black, .green]))
                    
                    
                    Path { path in
                        path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                        path.addLine(to: CGPoint(x: farLine, y: farLine))
                        path.addLine(to: CGPoint(x: nearLine, y: farLine))
                        path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
                    }
                    .fill(Gradient(colors: [.white, .blue, .black]))
                    .scaleEffect(0.7)
                    .offset(x: -size / 13, y: size / 11)
                    .padding()
                    
                    
                    Path { path in
                        path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                        path.addLine(to: CGPoint(x: farLine, y: farLine))
                        path.addLine(to: CGPoint(x: nearLine, y: farLine))
                        path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
                    }
                    .fill(Gradient(colors: [.white, .blue, .black]))
                    .scaleEffect(0.4)
                    .offset(x: -size / 3.2, y: size / 5.0)
                    .padding()
                }
            }
            .padding()
        }
    }

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 300, height: 300)
    }
}
