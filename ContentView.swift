//
//  ContentView.swift
//  War Game
//
//  Created by Felice Marano on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cardPlayer = "card"
    @State private var cardCpu = "card"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
//        MARK: BODY
        ZStack {
            Image ("background")
            
            VStack {
                
                Spacer()
                
                Image ("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                HStack  {
                    
                    Spacer()
                    
                    Image(cardPlayer)
                    
                    Spacer()
                    
                    Image(cardCpu)
                    
                    Spacer()
                }
                
                Spacer()
                
//                MARK: Generate random card + check score
                Button(action: {
                    
//                    MARK:Generate random number between 2 and 14
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
//                    MARK: Update the card
                    cardPlayer = "card" + String(playerRand)
                    cardCpu = "card" + String(cpuRand)
                    
//                    MARK: Update the score
                    
                    if (playerRand == cpuRand) {
                        cpuScore += 0
                        
                    } else if (playerRand < cpuRand) {
                        
                        cpuScore += 1
                        
                    } else {
                        playerScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })

                
                Spacer()
                
//                MARK: Score
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("You:")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU:")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                }
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
