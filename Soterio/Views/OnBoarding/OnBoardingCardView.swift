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
            Image(info.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
            .frame(height: 32)
            Text(info.title)
                .font(.title)
                .fontWeight(.regular)
            Text(info.description)
                .multilineTextAlignment(.center)
                .padding()
        }.padding()
    }
}

struct OnBoardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCardView(info: displayData[0])
    }
}
