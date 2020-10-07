//
//  PinkView.swift
//  practice
//
//  Created by User09 on 2020/10/7.
//

import SwiftUI

struct PinkView: View{
    @State private var rotateDegree: Double = 0
    var body: some View {
        VStack{
            Image(systemName: "heart")
                      .rotationEffect(.degrees(rotateDegree))
                      .animation(
                         Animation.linear(duration: 2)
                           .repeatForever(autoreverses: true)
                      )
                      .onAppear {
                            self.rotateDegree = 90
            }
                
        }
    }
}
struct PinkView_Previews: PreviewProvider {
    static var previews: some View {
        PinkView()
    }
}
