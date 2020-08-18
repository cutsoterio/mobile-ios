//
//  GetStartedView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/18/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct GetStartedView: View {
    var body: some View {
        VStack {
            Image("one")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 32)
            Text("Thank you for joining the fight against coronavirus")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .font(.title)
                
            Text("Your phone will be securely and anynomously sharing a unique number with other phones around you. This will be key in alerting you if you have been exposed to a COVID-19 patient.")
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            VStack {
                Spacer()
                    .frame(height: 16)
                VStack{
                   NavigationLink(destination: LandingView()) {
                       Text("Get started")
                       .foregroundColor(Color.white)
                       .frame(maxWidth: .infinity)
                       .frame(height: 40)
                       .background(Color.blue)
                       .cornerRadius(8)
                   }
                    
                }.padding(.vertical, 40)
                //Spacer()
                BottomBrand()
                //Spacer()
                
            }
        }.padding()
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
