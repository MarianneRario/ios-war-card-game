//
//  ContentView.swift
//  war-challenge
//
//  Created by Mapletree on 2/26/22.
//

import SwiftUI

struct ContentView: View {
    
    /* @State - is a property wrapper that allows you to change the property through button because by default, property in view is immutable (can't be changed) */
    
    
    var body: some View {
        
        //Container Element that will contain all the sub-elements
        //ZStack for background
        ZStack {
            Image("background").ignoresSafeArea()
            
            //VStack - stack all the elements vertically
            VStack{
                //top space
                Spacer()
                
                //logo image
                Image("logo")
                
                //space between logo and card
                Spacer()
                
                //Container that will contain cards horizontally (HStack)
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                //space between cards and button
                Spacer()
                
                
                //space between deal button and HStack for scores
                Spacer()
                
                //HStack for score labels
                HStack{
                    Spacer()
                    //VStack for scores
                    VStack {
                        Text("Player")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
                        Text("0")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    
                    //space between two scores
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        Text("0")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                //space below
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
