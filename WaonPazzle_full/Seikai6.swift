//
//  Seikai6.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/13.
//

import SwiftUI

struct Seikai6: View {
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
                Image("Em_piece")
                    .onTapGesture {
                        soundPlayer.EmPlay()
                        
                    }
                Text("→")
                    
                
                Image("Am_piece")
                    .onTapGesture {
                        soundPlayer.AmPlay()
                       
                    }
                Text(",")
                
                Image("Bm-5_piece")
                    .onTapGesture {
                        soundPlayer.BmPlay()
                        
                    }
                Text("→")
                    
                
                Image("Em_piece")
                    .onTapGesture {
                        soundPlayer.EmPlay()
                       
                    }
                
            }
            
            HStack{
                Image("D7_piece")
                    .onTapGesture {
                        soundPlayer.D7Play()
                        
                    }
                
                Text("→")
                Image("G7_piece")
                    .onTapGesture {
                        soundPlayer.G7Play()
                        
                    }
                Text(",")
                Image("G7_piece")
                    .onTapGesture {
                        soundPlayer.G7Play()
                        
                    }
                Text("→")
                
                Image("C_piece")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        
                    }
            }
            
            
            Image("seikai5_setsumei")
            
           
            
            
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

struct Seikai6_Previews: PreviewProvider {
    static var previews: some View {
        Seikai6()
    }
}
