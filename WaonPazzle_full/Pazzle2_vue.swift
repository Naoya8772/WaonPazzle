//
//  Pazzle2_vue.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI

struct Pazzle2_vue: View {
    @State var ButtonState = 0
    
    var body: some View {
        
        if ButtonState == 0{
            VStack{
                Image("pazzle2_go")
                
                Button(action: {
                    ButtonState = 1
                }) {
                    Image("gopazzle")
                }
                Button(action: {
                    ButtonState=2
                }) {
                    Image("returnMenu")
                        .padding()
                }
            
            }
        }else if ButtonState == 1{
            Pazzle2_cont()
        }else if ButtonState==2{
            SerectPazzle()
        }
    }
}

struct Pazzle2_vue_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle2_vue()
    }
}
