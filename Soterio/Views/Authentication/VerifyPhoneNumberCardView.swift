//
//  VerifyPhoneNumberCardView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/17/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct VerifyPhoneNumberCardView: View {
    var body: some View {
        VStack {
            Image("one")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 24)
            Text("Verify your phone number")
                .font(.title)
                .fontWeight(.regular)
            Text("Enter the code sent to your number")
                .multilineTextAlignment(.center)
                .padding(8)
        }.padding()
    }
}

struct VerifyPhoneNumberCardView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyPhoneNumberCardView()
    }
}
