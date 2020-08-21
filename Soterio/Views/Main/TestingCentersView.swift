//
//  TestingCentersView.swift
//  Soterio
//
//  Created by Munyaradzi Gordon Muneka on 19/8/2020.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct TestingCentersView: View {
    let TestHeading = ["Chamagamba Testing Center", "Ruvimbo Testing Center", "Rujeko Testing Center"]
        let TestDescription = ["Chamagamba Hospital", "Ruvimbo Hospital", "RujekoHospital"]
        
        var body: some View {
            
            VStack{
                HStack{
                   Text("Find all nearest testing centers.")
                        //.font(.headline)
                    Spacer()
                }
                .padding()
                
                List{
                    ForEach(0..<TestHeading.count){ hospitalHeading in
                        TestingCentersCard()
                    }
                }
                
            }.navigationBarTitle(Text("Testing Centers"), displayMode: .inline)
            .background(Color(red: 0.945, green: 0.945, blue: 0.941))
        }
    }

    struct TestingCentersCard : View{
        var body: some View{
            HStack{
                Image(systemName: "staroflife")
                VStack(alignment: .leading){
                    Text("Heading")
                        .font(.headline)
                    Text("Description")
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            
        }
    }


struct TestingCentersView_Previews: PreviewProvider {
    static var previews: some View {
        TestingCentersView()
    }
}
