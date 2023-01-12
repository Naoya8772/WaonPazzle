//
//  Pazzle6_lesson.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/13.
//

import SwiftUI

struct Pazzle6_lesson: View {
    @State var PageState = 0
    @State var ButtonState = 0
    @State var pianoState = 0
    
    let soundPlayer = SoundPlayer()
    
    
    var body: some View {
        if ButtonState==0{
            if PageState==0{
                VStack{
                    Image("code6_ex1")
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
                    Image("code6_ex2")
                            
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
                    
                    Spacer()
                }
            }else if PageState==2{
                VStack{
                    Image("code6_ex3")
                        .padding()
                            
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
                    
                    Spacer()
                }
            }else if PageState==3{
                VStack{
                    Image("code6_ex4")
                    Image("saisei")
                            .onTapGesture {
                                soundPlayer.TraitonePlay()
                            }
                    
                    Text("タップして再生")
                            
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
                    
                    Spacer()
                }
            }else if PageState==4{
                VStack{
                    Image("code6_ex5")
                            
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
                    
                    Spacer()
                }
            }else if PageState==5{
                VStack{
                    Image("code6_ex6")
                        .padding()
                            
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
                    
                    Spacer()
                }
            }else if PageState==6{
                VStack{
                    Image("code6_ex7")
                        .padding()
                            
                    HStack{
                        
                        Button(action: {
                            PageState = PageState-1
                        }) {
                            Image("modoru")
                                .padding()
                        }

                        
                        Spacer()
                        
                        Button(action: {
                            ButtonState = 1
                        }) {
                            Image("returnMenu")
                                .padding()
                        }
                        

                    }
                    
                    Spacer()
                }
            }
            
        }else if ButtonState==1{
            SerectPazzle()
        }
}
}

struct Pazzle6_lesson_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle6_lesson()
    }
}
