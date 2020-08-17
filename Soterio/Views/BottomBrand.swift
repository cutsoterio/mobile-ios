//
//  BottomBrand.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/17/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct BottomBrand: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"powered by"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 12))
                .padding(4)
            Text("CHINHOYI UNIVERSITY OF TECHNOLOGY")
                .fontWeight(.medium)
                .font(.system(size: 12))
        }
    }
}

struct BottomBrand_Previews: PreviewProvider {
    static var previews: some View {
        BottomBrand()
    }
}
