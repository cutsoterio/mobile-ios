//
//  NotificationsView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/18/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Image("one")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 32)
            Text("Enable notications")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .font(.title)
                
            Text("We need you to allow this Soterio application to receive and display notifications from the Ministry of Health of Zimbabwe.")
                .multilineTextAlignment(.center)
                .padding()
            
            VStack {
                Spacer()
                    .frame(height: 64 )
                VStack{
                   NavigationLink(destination: GetStartedView()) {
                       Text("Approve permissions")
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

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
