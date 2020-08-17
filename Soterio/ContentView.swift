//
//  ContentView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/16/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedPage: Int = 1
    @State var slideGesture = CGSize.zero
    @State var slideOne = false
    @State var slideOnePrevious = false
    @State var slideTwo = false
    @State var slideTwoPrevious = false
   
    var body: some View {
        
        ZStack{
            OnBoardingCardView(info: displayData[0])
                .offset(x: slideGesture.width)
                .offset(x: slideTwo ? 0 : 500)
                //.offset(x: slideTwoPrevious ? 500 : 0)
                .animation(.spring())
            
                .gesture(
                        DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width > 150{
                                self.slideTwo = false
                                self.slideTwoPrevious = true
                            }
                            
                            self.slideGesture = .zero
                        }
                )
            
            OnBoardingCardView(info: displayData[1])
                .offset(x: slideGesture.width)
                .offset(x: slideOne ? 0 : 500)
                .offset(x: slideOnePrevious ? 500 : 0)
                .offset(x: slideTwo ? -500 : 0)
                .animation(.spring())
            
                .gesture(
                        DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width < -150{
                                self.slideOne = true
                                self.slideTwo = true
                                
                            }
                            if self.slideGesture.width > 150{
                                self.slideOnePrevious = true
                                self.slideOne = false
                            }
                            self.slideGesture = .zero
                        }
                )
            
            
            OnBoardingCardView(info: displayData[2])
                .offset(x: slideGesture.width)
                .offset(x: slideOne ? -500 : 0)
                .animation(.spring())
                
                .gesture(
                    DragGesture().onChanged{ value in
                        self.slideGesture = value.translation
                    }
                    .onEnded{ value in
                        if self.slideGesture.width < -150{
                            self.slideOne = true
                            self.slideOnePrevious = false
                        }
                        
                        self.slideGesture = .zero
                    }
                )
            
            VStack {
                Spacer()
                VStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Get started")
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 240, height: 40)
                    .background(Color.blue)
                    .cornerRadius(20)
                
                    
                }.padding()
                BottomBrand()
                
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
