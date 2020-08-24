//
//  OnBoardingCardView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/16/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct OnBoardingCardView: View {
    
    var info: OnBoardingData
    
    var body: some View {
        VStack {
            Spacer()
            Image(info.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 32)
            Text(info.title)
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
            Text(info.description)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
                .frame(height: 32)
            Text(info.dots)
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(Color.white)
        }.padding()
    }
}

struct OnBoardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCardView(info: displayData[0])
    }
}
