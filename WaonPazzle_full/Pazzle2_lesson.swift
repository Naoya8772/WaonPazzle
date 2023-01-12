//
//  Pazzle2_lesson.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/11.
//

import SwiftUI

struct Pazzle2_lesson: View {
    let soundPlayer = SoundPlayer()
    @State var PageState = 0
    @State var ButtonState = 0
    @State var pianoState = 0
    
    var body: some View {
        if ButtonState==0{
        
            if PageState == 0{
                VStack{
                    Image("code_ex1")
                            .padding(.all)
                    Image("piano_C")
                            .padding(.all)
                    Image("saisei")
                            .onTapGesture {
                                soundPlayer.CPlay()
                            }
                    
                    Text("タップして再生")
                    HStack{
                        Button(action: {
                            ButtonState=1
                        }) {
                            Image("returnMenu")
                                .padding()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            PageState = 1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                    }

                
                }
            }else if PageState == 1{
                VStack{
                    Image("code_ex2")
                    Image("code_ex3")
                        .padding(.bottom)
                        
                    HStack{
                        Image("Fyaji")
                            .onTapGesture {
                                soundPlayer.FPlay()
                            }
                        
                        Image("Gyaji")
                            .onTapGesture {
                                soundPlayer.GPlay()
                            }
                        
                        Image("Emyaji")
                            .onTapGesture {
                                soundPlayer.EmPlay()
                            }
                        
                        Image("Am_piece")
                            .onTapGesture {
                                soundPlayer.AmPlay()
                            }
                    }.padding()
                    
                    Image("saisei")
                        .padding(.top)
                        .onTapGesture {
                            soundPlayer.CodeSinnkouPlay()
                        }
                    
                    Text("タップして再生")
                    
                    
                    HStack{
                        Button(action: {
                            PageState = 0
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = 2
                        }) {
                            Image("susumu")
                                .padding()
                        }
                        
                    }
                    
                }
                
            }else if PageState == 2 {
                    VStack{
                        Image("code2_ex")
                                .padding(.all)
                        
                        HStack{
                            Button(action: {
                                PageState = 1
                            }) {
                                Image("modoru")
                                    .padding()
                            }
                            Spacer()
                            Button(action: {
                                PageState = 3
                            }) {
                                Image("susumu")
                                    .padding()
                            }
                            
                        }
                 }
            }
            else if PageState==3{
                VStack{
                    Image("code2_ex1")
                        .padding()
                    
                    
                    if pianoState == 0 {
                        Image("piano")
                            .padding()
                    }else if pianoState == 1 {
                        Image("piano_C")
                            .padding()
                    }else if pianoState == 2 {
                        Image("piano_Dm")
                            .padding()
                    }else if pianoState == 3 {
                        Image("piano_Em")
                            .padding()
                    }else if pianoState == 4 {
                        Image("piano_F")
                            .padding()
                    }else if pianoState == 5 {
                        Image("piano_G")
                            .padding()
                    }else if pianoState == 6 {
                        Image("piano_Am")
                            .padding()
                    }else if pianoState == 7 {
                        Image("piano_Bm")
                            .padding()
                    }else if pianoState == 8 {
                        Image("piano_Fm")
                            .padding()
                    }else if pianoState == 11 {
                        Image("piano_CM7")
                            .padding()
                    }else if pianoState == 12 {
                        Image("piano_Dm7")
                            .padding()
                    }else if pianoState == 13 {
                        Image("piano_Em7")
                            .padding()
                    }else if pianoState == 14 {
                        Image("piano_FM7")
                            .padding()
                    }else if pianoState == 15 {
                        Image("piano_G7")
                            .padding()
                    }else if pianoState == 16 {
                        Image("piano_Am7")
                            .padding()
                    }else if pianoState == 17 {
                        Image("piano_Bm7")
                            .padding()
                    }
                    
                    HStack{
                        Image("C_piece")
                            .onTapGesture {
                                soundPlayer.CPlay()
                                pianoState = 1
                            }
                            
                        
                        Image("Dm_piece")
                            .onTapGesture {
                                soundPlayer.DmPlay()
                                pianoState = 2
                            }
                            
                        
                        Image("Em_piece")
                            .onTapGesture {
                                soundPlayer.EmPlay()
                                pianoState = 3
                            }
                            
                        
                        Image("F_piece")
                            .onTapGesture {
                                soundPlayer.FPlay()
                                pianoState = 4
                            }
                            
                        
                    }
                    .frame(width: 344, height: 80)
                    
                    
                    
                    HStack{
                        Image("G_piece")
                            .onTapGesture {
                                soundPlayer.GPlay()
                                pianoState = 5
                            }
                            
                        
                        Image("Am_piece")
                            .onTapGesture {
                                soundPlayer.AmPlay()
                                pianoState = 6
                            }
                            
                        
                        Image("Bm-5_piece")
                            .onTapGesture {
                                soundPlayer.BmPlay()
                                pianoState = 7
                            }
                            
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    Text("タップして音を確認してみよう")
                    
                    HStack{
                        Button(action: {
                            PageState = 2
                            pianoState = 0
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = 4
                            pianoState = 0
                        }) {
                            Image("susumu")
                                .padding()
                        }
                        
                    }            }
            }
            else if PageState == 4{
                VStack{
                    Image("code2_ex2")
                        .padding()
                    
                    if pianoState == 0 {
                        Image("piano")
                            .padding()
                    }else if pianoState == 1 {
                        Image("piano_C")
                            .padding()
                    }else if pianoState == 2 {
                        Image("piano_Dm")
                            .padding()
                    }else if pianoState == 3 {
                        Image("piano_Em")
                            .padding()
                    }else if pianoState == 4 {
                        Image("piano_F")
                            .padding()
                    }else if pianoState == 5 {
                        Image("piano_G")
                            .padding()
                    }else if pianoState == 6 {
                        Image("piano_Am")
                            .padding()
                    }else if pianoState == 7 {
                        Image("piano_Bm")
                            .padding()
                    }else if pianoState == 8 {
                        Image("piano_Fm")
                            .padding()
                    }else if pianoState == 11 {
                        Image("piano_CM7")
                            .padding()
                    }else if pianoState == 12 {
                        Image("piano_Dm7")
                            .padding()
                    }else if pianoState == 13 {
                        Image("piano_Em7")
                            .padding()
                    }else if pianoState == 14 {
                        Image("piano_FM7")
                            .padding()
                    }else if pianoState == 15 {
                        Image("piano_G7")
                            .padding()
                    }else if pianoState == 16 {
                        Image("piano_Am7")
                            .padding()
                    }else if pianoState == 17 {
                        Image("piano_Bm7")
                            .padding()
                    }
                    
                    HStack{
                        Image("CM7_piece")
                            .onTapGesture {
                                soundPlayer.CM7Play()
                                pianoState = 11
                            }
                            
                        
                        Image("Dm7_piece")
                            .onTapGesture {
                                soundPlayer.Dm7Play()
                                pianoState = 12
                            }
                            
                        
                        Image("Em7_piece")
                            .onTapGesture {
                                soundPlayer.Em7Play()
                                pianoState = 13
                            }
                            
                        
                        Image("FM7_piece")
                            .onTapGesture {
                                soundPlayer.FM7Play()
                                pianoState = 14
                            }
                            
                        
                    }
                    .frame(width: 344, height: 80)
                    
                    
                    
                    HStack{
                        Image("G7_piece")
                            .onTapGesture {
                                soundPlayer.G7Play()
                                pianoState = 15
                            }
                            
                        
                        Image("Am7_piece")
                            .onTapGesture {
                                soundPlayer.Am7Play()
                                pianoState = 16
                            }
                            
                        
                        Image("Bm7-5_piece")
                            .onTapGesture {
                                soundPlayer.Bm7Play()
                                pianoState = 17
                            }
                            
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    Text("タップして音を確認してみよう")
                    
                    HStack{
                        Button(action: {
                            PageState = 3
                            pianoState = 0
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = 5
                            pianoState = 0
                        }) {
                            Image("susumu")
                                .padding()
                        }
                        
                    }
                }
            }else if PageState==5{
                VStack{
                    Image("code2_ex3")
                    
                    Image("space")
                    
                    HStack{
                        Button(action: {
                            PageState = 4
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            ButtonState=1
                        }) {
                            Image("returnMenu")
                                .padding()
                        }
                        
                    }
                }
            
            }
        }else if ButtonState==1{
            SerectPazzle()
        }
        
    }
}

struct Pazzle2_lesson_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle2_lesson()
    }
}
