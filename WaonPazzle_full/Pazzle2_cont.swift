//
//  pazzle1_cont.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/05.
//

import SwiftUI

struct Pazzle2_cont: View {
    let soundPlayer = SoundPlayer()
    
    @State private var location1: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location2: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location3: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location4: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location5: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location6: CGPoint = CGPoint(x: 40, y: 40)
    @State private var location7: CGPoint = CGPoint(x: 40, y: 40)
    
    @State var ShowSeikaiView = 0
    @State var isShowFuseikaiView = false
    
    @State var pianoState = 0
    
    var body: some View {
        
        if ShowSeikaiView==0{
        
        VStack{
        
            HStack{
                Text("右のコード進行を完成させよ")
                Button(action:  {
                    soundPlayer.KanonPlay()
                }){
                    Image("saisei")
                }
            }
            
            
            
            HStack{
                Image("onC")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        pianoState = 1
                    }
                
                Image("drag_sq")
                Image("drag_sq")
                
                Image("onEm")
                    .onTapGesture {
                        soundPlayer.EmPlay()
                        pianoState = 3
                    }
                
            }
            
            HStack{
                Image("drag_sq")
                
                Image("onC")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        pianoState = 1
                    }
                
                Image("onF")
                    .onTapGesture {
                        soundPlayer.FPlay()
                        pianoState = 4
                    }
                
                Image("onG")
                    .onTapGesture {
                        soundPlayer.GPlay()
                        pianoState = 5
                    }
            }.padding()
            
            
            if pianoState == 0 {
                Image("piano")
            }else if pianoState == 1 {
                Image("piano_C")
            }else if pianoState == 2 {
                Image("piano_Dm")
            }else if pianoState == 3 {
                Image("piano_Em")
            }else if pianoState == 4 {
                Image("piano_F")
            }else if pianoState == 5 {
                Image("piano_G")
            }else if pianoState == 6 {
                Image("piano_Am")
            }else if pianoState == 7 {
                Image("piano_Bm")
            }else if pianoState == 8 {
                Image("piano_Fm")
            }
            
            
            
            HStack{
                
               
            
                if (-59)...(-28.5) ~= location3.x && (-382)...(-340) ~= location3.y &&
                    107...147 ~= location2.x && (-382)...(-340) ~= location2.y &&
                    (-240)...(-200.5) ~= location4.x && (-280)...(-237) ~= location4.y
                {
                    Button("正解判定") {
                        pianoState = 0
                        ShowSeikaiView = 1
                    }.padding(.all)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                }else{
                    Button("正解判定") {
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
                
                
            }
            
            Spacer()
            
            
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
        }else if ShowSeikaiView==1{
            Seikai2()
        }
        
    }
}

struct Pazzle2_cont_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle2_cont()
    }
}

