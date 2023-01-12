//
//  Pazzle4_lesson.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI

struct Pazzle4_lesson: View {
    let soundPlayer = SoundPlayer()
    @State var PageState = 0
    @State var ButtonState = 0
    @State var pianoState = 0
    
    var body: some View {
        if ButtonState==0{
            if PageState==0{
                VStack{
                    Image("code4_ex1")
                        .padding()
                            
                    HStack{
                        
                        Button(action: {
                            ButtonState=1
                        }) {
                            Image("returnMenu")
                                .padding()
                        }

                        
                        Spacer()
                        
                        Button(action: {
                            PageState = PageState+1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                        

                    }
                    
                    Spacer()
                }
                
            }else if PageState==1{
                VStack{
                
                    Image("tonic_ex")
                    
                    HStack{
                        Image("C_piece")
                            .onTapGesture {
                                soundPlayer.CPlay()
                                
                            }
                            
                        
                        Image("CM7_piece")
                            .onTapGesture {
                                soundPlayer.CM7Play()
                               
                            }
                            
                        
                        Image("Em_piece")
                            .onTapGesture {
                                soundPlayer.EmPlay()
                                
                            }
                        
                        Image("Em7_piece")
                            .onTapGesture {
                                soundPlayer.Em7Play()
                                
                            }
                           
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    HStack{
                            
                        
                        Image("Am_piece")
                            .onTapGesture {
                                soundPlayer.AmPlay()
                                
                            }
                        
                        Image("Am7_piece")
                            .onTapGesture {
                                soundPlayer.Am7Play()
                                
                            }
                           
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    HStack{
                        Button(action: {
                            PageState = PageState-1
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = PageState+1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                    
                    }
                }
            }else if PageState==2{
                VStack{
                
                    Image("dominunt_ex")
                    
                    HStack{
                        Image("G_piece")
                            .onTapGesture {
                                soundPlayer.GPlay()
                                
                            }
                            
                        
                        Image("G7_piece")
                            .onTapGesture {
                                soundPlayer.G7Play()
                               
                            }
                            
                        
                        Image("Bm-5_piece")
                            .onTapGesture {
                                soundPlayer.BmPlay()
                                
                            }
                        
                        Image("Bm7-5_piece")
                            .onTapGesture {
                                soundPlayer.Bm7Play()
                                
                            }
                           
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    
                    
                    HStack{
                        Button(action: {
                            PageState = PageState-1
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = PageState+1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                    
                    }
                }

            }else if PageState==3{
                VStack{
                    
                    Image("subd_title")
                    Image("subd_fix")
                
                    Image("subdominunt_ex")
                    
                    HStack{
                        Image("F_piece")
                            .onTapGesture {
                                soundPlayer.FPlay()
                                
                            }
                            
                        
                        Image("FM7_piece")
                            .onTapGesture {
                                soundPlayer.FM7Play()
                               
                            }
                            
                        
                        Image("Dm_piece")
                            .onTapGesture {
                                soundPlayer.DmPlay()
                                
                            }
                        
                        Image("Dm7_piece")
                            .onTapGesture {
                                soundPlayer.Dm7Play()
                                
                            }
                           
                        
                    }
                    .frame(width: 256, height: 80)
                    
                    
                    HStack{
                        Button(action: {
                            PageState = PageState-1
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = PageState+1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                    
                    }
                }

            }else if PageState==4{
                VStack{
                    Image("code4_ex2")
                    
                    HStack{
                        Button(action: {
                            PageState = PageState-1
                        }) {
                            Image("modoru")
                                .padding()
                        }
                        Spacer()
                        Button(action: {
                            PageState = PageState+1
                        }) {
                            Image("susumu")
                                .padding()
                        }
                    
                    }
                }
            }else if PageState==5{
                VStack{
                    Image("code4_ex3")
                    Image("space")
                    
                    HStack{
                        Button(action: {
                            PageState = PageState-1
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

struct Pazzle4_lesson_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle4_lesson()
    }
}
