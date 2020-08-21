//
//  LandingView.swift
//  Soterio
//
//  Created by Tatenda Christopher Chinyamakobvu on 8/18/20.
//  Copyright © 2020 Soterio. All rights reserved.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
       
            VStack{
                HStack{
                    VStack{
                        Text("")
                    }
                    VStack(alignment: .leading, spacing: 8) {
                        HStack{
                            Text("Contact tracing activated")
                            .font(.system(size: 24))
                            Spacer()
                            Image(systemName: "person")
                        }
                        Text("Thank you for joining us in the fight against COVID-19.")
                        HStack{
                            Spacer()
                            Image(systemName: "person")
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 24).fill(Color.white))
                    //.shadow(radius: 1)
                    
                    VStack{
                        Text("")
                    }
                }.padding(4)
                
                HStack{
                    
                    VStack{
                        Text(" ")
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack{
                            Text("Upload my encounter log")
                            .font(.system(size: 24))
                            Spacer()
                            Image(systemName: "person")
                        }
                        Text("Authorization from a Health official will be required.")
                        Spacer()
                        HStack{
                            NavigationLink(destination: UploadView()) {
                               Text("Start upload")
                                .foregroundColor(Color.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .background(Color.blue)
                                .cornerRadius(8)
                            }
                            //.padding(.vertical, 8)
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 24).fill(Color.white))
                    //.shadow(radius: 1)
                    
                    VStack{
                        Text("")
                    }
                }
                
                
                HStack{
                    
                    VStack{
                        Text(" ")
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack{
                            Text("Always wash your hands")
                            .font(.system(size: 24))
                            Spacer()
                            Image(systemName: "person")
                        }
                        Text("To keep yourself and your family safe, wash your hands with running water for at least 20 seconds.")
                        Spacer()
                        HStack{
                            //Spacer()
                            NavigationLink(destination: UploadView()) {
                                Text("Dismis")
                                    .foregroundColor(Color.orange)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 40)
                                    .background(Color.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 24).fill(Color.white))
                    //.shadow(radius: 1)
                    
                    VStack{
                        Text("")
                    }
                }
                
                HStack{
                    
                    VStack{
                        Text(" ")
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack{
                            Text("Great!")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            Spacer()
                            Image(systemName: "person")
                        }
                        Text("It seems that you have not come into contact with someone who is COVID-19 positive.")
                        .foregroundColor(.white)
                        Spacer()
                        HStack{
                            //Spacer()
                            NavigationLink(destination: UploadView()) {
                                Text("What should i do?")
                                    .foregroundColor(Color.blue)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 40)
                                    .background(Color.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 24).fill(Color.blue))
                    //.shadow(radius: 4)
                    
                    VStack{
                        Text("")
                    }
                }
                //.overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.gray))
                //here
            }
            .padding(8)
                
            VStack{
                NavigationLink(destination: HospitalsView()) {
                   HStack{
                       VStack(alignment: .leading, spacing: 8) {
                           HStack{
                               VStack(alignment: .leading, spacing: 8){
                                   Text("Hospitals")
                                       .font(.system(size: 24))
                                        .foregroundColor(.black)
                               }
                               Spacer()
                               Image(systemName: "chevron.right")
                                .foregroundColor(Color.black)
                           }
                           
                       }
                       .padding(8)
                       .frame(maxWidth: .infinity)
                    }
                }
                
                Text("")
                    .foregroundColor(Color.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 1)
                    .background(Color(red: 0.945, green: 0.945, blue: 0.941))
                    .padding(.horizontal, 16)
                
                NavigationLink(destination: TestingCentersView()) {
                    HStack{
                        VStack(alignment: .leading, spacing: 8) {
                            HStack{
                                VStack(alignment: .leading, spacing: 8){
                                    Text("Testing centers")
                                        .font(.system(size: 24))
                                     .foregroundColor(.black)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color.black)
                            }
                            
                        }
                        .padding(8)
                        .frame(maxWidth: .infinity)
                    }
                }
                
            }.background(Color.white)
            
            Text("")
        }
        .navigationBarTitle(Text("Home"), displayMode: .inline)
        .background(Color(red: 0.945, green: 0.945, blue: 0.941))
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
