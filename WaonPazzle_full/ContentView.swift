//
//  ContentView.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/05.
//

import SwiftUI

struct ContentView: View {
    @State var ButtonState = 0
    
    var body: some View {
        
        if ButtonState == 0 {
            let soundPlayer = SoundPlayer()
            
        VStack{
            
            
            
            Image("title")
            
            Image("onpu")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom)
            
                Button(action: {
                    ButtonState = 1
                    
                }) {
                    Image("start")
                }
            
                .onAppear {
                   soundPlayer.BGMPlay()
               }
                
        }
        }else if ButtonState == 1{
            SerectPazzle()
        }
                
            
                
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
