//
//  Pazzle6_vue.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/13.
//

import SwiftUI

struct Pazzle6_vue: View {
    @State var ButtonState = 0
    
    var body: some View {
        if ButtonState == 0{
            VStack{
                Image("pazzle6_go")
                
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
            Pazzle6_cont()
        }else if ButtonState==2{
            SerectPazzle()
        }
    }
}

struct Pazzle6_vue_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle6_vue()
    }
}
