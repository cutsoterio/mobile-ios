//
//  PrivacyView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/17/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct PrivacyView: View {
    var body: some View {
        VStack{
            Text("Privacy policy")
                .font(.title)
                .fontWeight(.regular)
            Text("The data collected is used sorely to combat COVID-19")
                .multilineTextAlignment(.center)
                .padding(8)
            H
            Text("Data collection")
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(8)
        }.padding()
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
