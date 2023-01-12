//
//  Seikai.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/06.
//

import SwiftUI

    struct Seikai2: View {
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
                    Image("C_piece")
                        .onTapGesture {
                            soundPlayer.CPlay()
                        }
                    
                    Image("G_piece").onTapGesture {
                        soundPlayer.GPlay()
                    }
                    
                    Image("Am_piece").onTapGesture {
                        soundPlayer.AmPlay()
                    }
                    
                    Image("Em_piece")
                        .onTapGesture {
                            soundPlayer.EmPlay()
                        }
                    
                }
                
                HStack{
                    Image("F_piece")
                        .onTapGesture {
                            soundPlayer.FPlay()
                        }
                    
                    Image("C_piece").onTapGesture {
                        soundPlayer.CPlay()
                    }
                    
                    Image("F_piece").onTapGesture {
                        soundPlayer.FPlay()
                    }
                    
                    Image("G_piece")
                        .onTapGesture {
                            soundPlayer.GPlay()
                        }
                    
                }
                
                
                
                Image("seikai1_setsumei")
                
                
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

    struct Seikai2_Previews: PreviewProvider {
        static var previews: some View {
        Seikai2()
        }
    }
}

