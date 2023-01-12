//
//  Pazzle1_lesson.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/10.
//

import SwiftUI

struct Pazzle1_lesson: View {
    let soundPlayer = SoundPlayer()
    @State var PageState = 0
    
    var body: some View {
        
        
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
                    HStack{
                        Spacer()
                    Image("susumu")
                        .padding()
                        .onTapGesture {
                            PageState=PageState+1
                        }
                        
                    }
                        
                    Image("space")

                
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
                    
                    Spacer()
                    
                    HStack{
                        Image("modoru")
                            .padding()
                            .onTapGesture {
                                PageState=PageState-1
                            }
                        Spacer()
                        Image("susumu")
                            .padding()
                            .onTapGesture {
                                PageState=PageState+1
                            }
                    }
                    
                    Image("space")
                }
            }else if PageState == 3 {
                
            }
            
        
    }
}

struct Pazzle1_lesson_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle1_lesson()
    }
}
