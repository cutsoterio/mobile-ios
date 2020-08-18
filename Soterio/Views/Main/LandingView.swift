//
//  LandingView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/18/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        //ScrollView(.vertical, showsIndicators: false){
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color.white)
                    .shadow(radius: 10)

                VStack {
                    Text("Hello")
                        .font(.largeTitle)
                        .foregroundColor(.black)

                    Text("Gordons")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                .padding(20)
                .multilineTextAlignment(.center)
            }
            .frame(width: 450, height: 250)
        //}
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
