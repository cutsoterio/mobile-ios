//
//  HospitalsView.swift
//  Soterio
//
//  Created by Munyaradzi Gordon Muneka on 19/8/2020.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct HospitalsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            Text("Hospitals")
        }
        .padding()
        .navigationBarTitle(Text("Hospitals"), displayMode: .inline)
    }
}

struct HospitalsView_Previews: PreviewProvider {
    static var previews: some View {
        HospitalsView()
    }
}
