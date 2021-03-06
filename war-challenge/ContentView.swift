//
//  ContentView.swift
//  war-challenge
//
//  Created by Mapletree on 2/26/22.
//

import SwiftUI

struct ContentView: View {
    
    /* @State - is a property wrapper that allows you to change the property through button because by default, property in view is immutable (can't be changed) */
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
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
                
                //deal button
                Button {
                    //generate a random number from 2 to 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //update the cards
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
                    //update the score
                    if(playerRand > cpuRand) {
                        playerScore+=1
                    } else if (playerRand < cpuRand){
                        cpuScore+=1
                    }
                    
                    
                    
                } label: {
                    Image("dealbutton")
                }

                
                
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
                            
                        Text(String(playerScore))
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
                        
                        Text(String(cpuScore))
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
