//
//  HospitalsView.swift
//  Soterio
//
//  Created by Munyaradzi Gordon Muneka on 19/8/2020.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct HospitalsView: View {
    
    let hospitalHeading = ["Chamagamba Hospital", "Ruvimbo Hospital", "RujekoHospital"]
    let hospitalDescription = ["Chamagamba Hospital", "Ruvimbo Hospital", "RujekoHospital"]
    
    var body: some View {
        
        VStack{
            HStack{
               Text("Find all nearest hospitals.")
                    //.font(.headline)
                Spacer()
            }
            .padding()
            
            List{
                ForEach(0..<hospitalHeading.count){ hospitalHeading in
                    HosptitalCard()
                }
            }
            
        }.navigationBarTitle(Text("Hospitals"), displayMode: .inline)
        .background(Color(red: 0.945, green: 0.945, blue: 0.941))
    }
}

struct HosptitalCard : View{
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

struct HospitalsView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalsView()
    }
}
