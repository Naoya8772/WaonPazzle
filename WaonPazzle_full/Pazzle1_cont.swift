//
//  Pazzle1_cont.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/10.
//

import SwiftUI

struct Pazzle1_cont: View {
    let soundPlayer = SoundPlayer()
    
    @State private var location1: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location2: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location3: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location4: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location5: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location6: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location7: CGPoint = CGPoint(x: 40, y: 40)
    
    @State var isShowSeikaiView = false
    @State var isShowFuseikaiView = false
    
    @State var area1State = 0
    @State var area2State = 0
    @State var area3State = 0
    @State var area4State = 0
    
    @State var pianoState = 0
    
    var body: some View {
        
        VStack{
            Text("コード進行を作ってみよう!")
           
            HStack{
                
                Image("drag_sq")
                Image("drag_sq")
                Image("drag_sq")
                Image("drag_sq")
                
            }
            .padding(.all)
            
            if pianoState == 0 {
                Image("piano")
                    .padding(.all)
            }else if pianoState == 1 {
                Image("piano_C")
                    .padding(.all)
            }else if pianoState == 2 {
                Image("piano_Dm")
                    .padding(.all)
            }else if pianoState == 3 {
                Image("piano_Em")
                    .padding(.all)
            }else if pianoState == 4 {
                Image("piano_F")
                    .padding(.all)
            }else if pianoState == 5 {
                Image("piano_G")
                    .padding(.all)
            }else if pianoState == 6 {
                Image("piano_Am")
                    .padding(.all)
            }else if pianoState == 7 {
                Image("piano_Bm")
                    .padding(.all)
            }else if pianoState == 8 {
                Image("piano_Fm")
                    .padding(.all)
            }
            
            
            if (35)...(50) ~= location1.x && (-265)...(-250) ~= location1.y || (35)...(50) ~= location2.x && (-265)...(-250) ~= location2.y
            {
                Button("完成") {
                    pianoState = 0
                    isShowSeikaiView = true
                }
                .sheet(isPresented: $isShowSeikaiView) {
                    Seikai2()
                }
                .padding(.all)
                .foregroundColor(Color.white)
                .background(Color.red)
            }else{
                Button("完成") {
                    pianoState = 0
                    isShowFuseikaiView = true
                }
                .sheet(isPresented: $isShowFuseikaiView) {
                    Fuseikai()
                }
                .padding(.all)
                .foregroundColor(Color.white)
                .background(Color.red)
            }
            
            
            HStack{
                Image("C_piece")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        pianoState = 1
                    }
                    .position(location1)
                    .gesture(DragGesture().onChanged({ value in location1 = value.location}))
                
                Image("Am_piece")
                    .onTapGesture {
                        soundPlayer.AmPlay()
                        pianoState = 6
                    }
                    .position(location2)
                    .gesture(DragGesture().onChanged({ value in location2 = value.location}))
                
                Image("G_piece")
                    .onTapGesture {
                        soundPlayer.GPlay()
                        pianoState = 5
                    }
                    .position(location3)
                    .gesture(DragGesture().onChanged({ value in location3 = value.location}))
                
                Image("F_piece")
                    .onTapGesture {
                        soundPlayer.FPlay()
                        pianoState = 4
                    }
                    .position(location4)
                    .gesture(DragGesture().onChanged({ value in location4 = value.location}))
                
            }
            .frame(width: 344, height: 80)
            
            
            
            HStack{
                Image("Dm_piece")
                    .onTapGesture {
                        soundPlayer.DmPlay()
                        pianoState = 2
                    }
                    .position(location5)
                    .gesture(DragGesture().onChanged({ value in location5 = value.location}))
                
                Image("Fm_piece")
                    .onTapGesture {
                        soundPlayer.FmPlay()
                        pianoState = 8
                    }
                    .position(location6)
                    .gesture(DragGesture().onChanged({ value in location6 = value.location}))
                
                Image("Bm-5_piece")
                    .onTapGesture {
                        soundPlayer.BmPlay()
                        pianoState = 6
                    }
                    .position(location7)
                    .gesture(DragGesture().onChanged({ value in location7 = value.location}))
                
            }
            .frame(width: 256, height: 80)
            
            
            
        }
    }
}

struct Pazzle1_cont_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle1_cont()
    }
}
