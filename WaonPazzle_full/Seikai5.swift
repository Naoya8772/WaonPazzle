//
//  Seikai5.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/13.
//

import SwiftUI

struct Seikai5: View {
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
                Image("Am_piece")
                    .onTapGesture {
                        soundPlayer.AmPlay()
                        
                    }
                Text("→")
                    
                
                Image("Dm_piece")
                    .onTapGesture {
                        soundPlayer.DmPlay()
                       
                    }
                Text(",")
                
                Image("CM7_piece")
                    .onTapGesture {
                        soundPlayer.CM7Play()
                        
                    }
                Text("→")
                    
                
                Image("F_piece")
                    .onTapGesture {
                        soundPlayer.FPlay()
                       
                    }
                
            }
            
            HStack{
                Image("Dm_piece")
                    .onTapGesture {
                        soundPlayer.DmPlay()
                        
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

struct Seikai5_Previews: PreviewProvider {
    static var previews: some View {
        Seikai5()
    }
}
