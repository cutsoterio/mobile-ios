//
//  GetPhoneCardView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/17/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct GetPhoneCardView: View {
    @State var phoneNumber: String = ""
    var body: some View {
        VStack{
            Image("one")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 32)
            Text("Phone verification")
                .font(.title)
                .fontWeight(.regular)
            Text("We need to register your phone number before getting startedd")
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding(8)
            TextField("Enter phone number", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            VStack {
                VStack{
                    NavigationLink(destination: VerifyPhoneNumberCardView()) {
                       Text("Get OTP")
                           .foregroundColor(Color.white)
                           .frame(maxWidth: .infinity)
                           .frame(height: 40)
                           .background(Color.blue)
                           .cornerRadius(8)
                    }
                    
                }
                Spacer()
                BottomBrand()
            }
        }.padding()
    }
}

struct GetPhoneCardView_Previews: PreviewProvider {
    static var previews: some View {
        GetPhoneCardView()
    }
}
