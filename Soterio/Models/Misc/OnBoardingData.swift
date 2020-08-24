//
//  OnBoardingData.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/16/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import Foundation

struct OnBoardingData: Identifiable{
    var id: Int
    var image: String
    var title: String
    var description: String
    var dots: String
}

var displayData: [OnBoardingData] = [
    OnBoardingData(id: 1, image: "one", title: "Exposure notifications", description: "Get alerted when you might have come into contact with someone has tested positive for COVID-19.", dots: "*--"),
    OnBoardingData(id: 2, image: "one", title: "Your data is secure", description: "We will store your data securely and safely and we do not distribute it to to third parties.", dots: "-*-"),
    OnBoardingData(id: 3, image: "one", title: "Track symptoms", description: "Update your status and symptoms in the application to help contain the spread of COVID-19.", dots: "--*")
]
