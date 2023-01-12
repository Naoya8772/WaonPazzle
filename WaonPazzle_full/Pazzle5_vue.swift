//
//  Pazzle5_vue.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/12.
//

import SwiftUI

struct Pazzle5_vue: View {
    @State var ButtonState = 0
    
    var body: some View {
        if ButtonState == 0{
            VStack{
                Image("pazzle5_go")
                
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
            Pazzle5_cont()
        }else if ButtonState==2{
            SerectPazzle()
        }
    }
}

struct Pazzle5_vue_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle5_vue()
    }
}
