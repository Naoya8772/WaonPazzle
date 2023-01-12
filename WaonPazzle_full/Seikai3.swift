//
//  Seikai3.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI

struct Seikai3: View {
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
                Image("FM7_piece")
                    .onTapGesture {
                        soundPlayer.FM7Play()
                        
                    }
                    
                
                Image("G_piece")
                    .onTapGesture {
                        soundPlayer.GPlay()
                       
                    }
                    
                
                Image("Em7_piece")
                    .onTapGesture {
                        soundPlayer.Em7Play()
                        
                    }
                
                Image("Am7_piece")
                    .onTapGesture {
                        soundPlayer.Am7Play()
                        
                    }
                   
                
            }
            .frame(width: 256, height: 80)
            
            
            
            Image("seikai3_setsumei")
            
            
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

struct Seikai3_Previews: PreviewProvider {
    static var previews: some View {
        Seikai3()
    }
}
