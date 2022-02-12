//
//  ContentView.swift
//  Shared
//
//  Created by izaan jahangir on 12/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard: String = "card2";
    @State var cpuCard: String = "card3";
    @State var playerScore: Int = 0;
    @State var cpuScore: Int = 0;
    
    var body: some View {
        ZStack {
            Image("background")
        
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRandom = Int.random(in: 2...14);
                    let cpuRandom = Int.random(in: 2...14);
                    
                    playerCard = "card" + String(playerRandom);
                    cpuCard = "card" + String(cpuRandom);
                    
                    if(playerRandom > cpuRandom) {
                        playerScore += 1;
                    }
                    
                    else if(cpuRandom > playerRandom) {
                        cpuScore += 1;
                    }
                    else {
                        playerScore += 1;
                        cpuScore += 1;
                    }
                }, label: {
                    Image("deal")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 20) {
                        Text("Player").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                        Text(String(playerScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    }
                    Spacer()
                    VStack(spacing: 20) {
                        Text("CPU").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                        Text(String(cpuScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
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
