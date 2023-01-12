//
//  SerectPazzle.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/05.
//

import SwiftUI

struct SerectPazzle: View {
    @State var ButtonState = 0
    
    var body: some View {
        if ButtonState==0{
        
        
            VStack{
                ScrollView{
                    
                    Group{
                    
                        Image("space2")
                        
                    
                        Button(action: {
                            ButtonState = 1
                        }) {
                            Image("pazzle1")
                        }
                        .padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 2
                        }) {
                            Image("pazzle2")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 3
                        }) {
                            Image("pazzle3")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 4
                        }) {
                            Image("pazzle4")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 5
                        }) {
                            Image("pazzle5")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 6
                        }) {
                            Image("pazzle6")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 7
                        }) {
                            Image("pazzle7")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 8
                        }) {
                            Image("pazzle8")
                        }.padding(.bottom)
                        
                        Button(action: {
                            ButtonState = 9
                        }) {
                            Image("pazzle9")
                        }.padding(.bottom)
                    }
                    
                    
                    
                }
                
            }.navigationTitle("学習内容")
           
        }else if ButtonState==1{
            Pazzle2_lesson()
        }else if ButtonState==2{
            Pazzle2_vue()
        }else if ButtonState==3{
            Pazzle3_vue()
        }else if ButtonState==4{
            Pazzle4_lesson()
        }else if ButtonState==5{
            Pazzle4_vue()
        }else if ButtonState==6{
            Pazzle5_lesson()
        }else if ButtonState==7{
            Pazzle5_vue()
        }else if ButtonState==8{
            Pazzle6_lesson()
        }else if ButtonState==9{
            Pazzle6_vue()
        }
    }
}

struct SerectPazzle_Previews: PreviewProvider {
    static var previews: some View {
        SerectPazzle()
    }
}
