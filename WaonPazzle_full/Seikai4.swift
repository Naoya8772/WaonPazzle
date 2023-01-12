//
//  Seikai4.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI

struct Seikai4: View {
    let soundPlayer = SoundPlayer()
    @State var ButtonState = 0
    
    var body: some View {
        if ButtonState==0{
        VStack{
            Image("clear")
                .resizable()
                .aspectRatio(contentMode:.fit
                )
            
            HStack{
                Image("Am7_piece")
                    .onTapGesture {
                        soundPlayer.Am7Play()
                        
                    }
                    
                
                Image("F_piece")
                    .onTapGesture {
                        soundPlayer.FPlay()
                       
                    }
                    
                
                Image("G7_piece")
                    .onTapGesture {
                        soundPlayer.G7Play()
                        
                    }
                
                Image("C_piece")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        
                    }
                   
                
            }
            .frame(width: 256, height: 80)
            
            
            
            Image("seikai4_setsumei")
            
            
            Button(action: {
                ButtonState = 1
            }) {
                Image("returnMenu")
            }
            
                
    }
        }else if ButtonState==1{
            SerectPazzle()
        }
    }
}

struct Seikai4_Previews: PreviewProvider {
    static var previews: some View {
        Seikai4()
    }
}
