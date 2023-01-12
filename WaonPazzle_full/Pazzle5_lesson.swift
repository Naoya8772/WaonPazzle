//
//  Pazzle5_lesson.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI


struct Pazzle5_lesson: View {
    @State var PageState = 0
    @State var ButtonState = 0
    @State var pianoState = 0
    
    var body: some View {
        if ButtonState==0{
            if PageState==0{
                VStack{
                    Image("code5_ex1")
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
                    Image("code5_ex2")
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
            }else if PageState==2{
                VStack{
                    Image("code5_ex3")
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
                    Image("code5_ex4")
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
            }else if PageState==4{
                VStack{
                    Image("code5_ex5")
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
            }else if PageState==5{
                VStack{
                    Image("code5_ex6")
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
                    Image("code5_ex7")
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
            }else if PageState==7{
                VStack{
                    Image("code5_ex8")
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
            }else if PageState==8{
                VStack{
                    Image("code5_ex9")
                        .padding()
                            
                    HStack{
                        
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

struct Pazzle5_lesson_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle5_lesson()
    }
}
