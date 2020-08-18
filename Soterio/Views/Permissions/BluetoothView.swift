//
//  BluetoothView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/18/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct BluetoothView: View {
    var body: some View {
        VStack {
            Image("one")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150, alignment: .center)
            Spacer()
                .frame(height: 32)
            Text("Allow bluetooth and location access")
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .font(.title)
                
            Text("This application uses low energy bluetooth to log encounters between phones with the appliaction installed.\n\nThis applicationn also requires location access in order to warn of your interactions with COVID-19 redzones.\n")
                .multilineTextAlignment(.center)
                .padding()
            
            VStack {
                Spacer()
                    .frame(height: 64 )
                VStack{
                   NavigationLink(destination: NotificationsView()) {
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

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothView()
    }
}
