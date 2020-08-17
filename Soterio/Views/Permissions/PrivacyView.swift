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
            
            Spacer()
            
            Text("Data collection                                                                                      ")
                .fontWeight(.medium)
                .padding(.vertical)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
            Text("Your phone will be sharing a unique number with other phones that you come nearby. This number contains no personal identifiable information. At no point is your personal information shared with third party.")
                .lineLimit(nil)
        
            Text("Ensuring privacy                                                                                      ")
                .fontWeight(.medium)
                .padding(.vertical)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
            Text("Phones will never share personal identifiable information. Your name and ID number are stored securely on your phone only. Only the ministry of Health is able to decode the unique number your phone has received from a person.")
                .lineLimit(nil)


            /*Text("Contact tracing and notifications                                                                                      ")
                .fontWeight(.medium)
                .padding(.vertical)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
            
            Text("Exposure notifications sent will not contain the identities of patients whom you might have been in contact with. Nontheless, the notification will tell you the approximate time of the encounter and its duration.")
            .lineLimit(nil)*/
            
            VStack {
                Spacer()
                VStack{
                   NavigationLink(destination: BluetoothView()) {
                       Text("Next")
                       .foregroundColor(Color.white)
                       .frame(maxWidth: .infinity)
                       .frame(height: 40)
                       .background(Color.blue)
                       .cornerRadius(8)
                   }
                    
                }.padding(.vertical, 40)
                BottomBrand()
            }
        }.padding()
    }
}

struct PrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyView()
    }
}
