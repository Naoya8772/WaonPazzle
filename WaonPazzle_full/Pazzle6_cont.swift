//
//  Pazzle6_cont.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/13.
//

import SwiftUI

struct Pazzle6_cont: View {
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
    @State var isShowGodokenView = false
    
    @State var pianoState = 0
    
    
    var body: some View {
        if ShowSeikaiView==0{
        
        VStack{
        
            HStack{
                
                Image("pazzle6_mission")
              //  Text("x: \(location5.x)y: \(location2.y)")
            }
            
            
            
            HStack{
                
                Image("onEm")
                    .onTapGesture {
                        soundPlayer.EmPlay()
                        pianoState = 3
                    }
               
                
                Image("onAm")
                    .onTapGesture {
                        soundPlayer.AmPlay()
                        pianoState = 6
                    }
                
                
                Image("onF")
                    .onTapGesture {
                        soundPlayer.FPlay()
                        pianoState = 4
                    }
                
                Image("drag_sq")
                
            }
            
            HStack{
                Image("onEm")
                    .onTapGesture {
                        soundPlayer.EmPlay()
                        pianoState = 3
                    }
                
                
                Image("drag_sq")
                
                Image("drag_sq")
                
                
                Image("onC")
                    .onTapGesture {
                        soundPlayer.CPlay()
                        pianoState = 1
                    }
            }
            
            
            if pianoState == 0 {
                Image("piano")
                    .padding(.top)
            }else if pianoState == 1 {
                Image("piano_C")
                    .padding(.top)
            }else if pianoState == 2 {
                Image("piano_Dm")
                    .padding(.top)
            }else if pianoState == 3 {
                Image("piano_Em")
                    .padding(.top)
            }else if pianoState == 4 {
                Image("piano_F")
                    .padding(.top)
            }else if pianoState == 5 {
                Image("piano_G")
                    .padding(.top)
            }else if pianoState == 6 {
                Image("piano_Am")
                    .padding(.top)
            }else if pianoState == 7 {
                Image("piano_Bm")
                    .padding(.top)
            }else if pianoState == 8 {
                Image("piano_Fm")
                    .padding(.top)
            }else if pianoState == 9 {
                Image("piano_D7")
                    .padding(.top)
            }else if pianoState == 11 {
                Image("piano_CM7")
                    .padding(.top)
            }else if pianoState == 12 {
                Image("piano_Dm7")
                    .padding(.top)
            }else if pianoState == 13 {
                Image("piano_Em7")
                    .padding(.top)
            }else if pianoState == 14 {
                Image("piano_FM7")
                    .padding(.top)
            }else if pianoState == 15 {
                Image("piano_G7")
                    .padding(.top)
            }else if pianoState == 16 {
                Image("piano_Am7")
                    .padding(.top)
            }else if pianoState == 17 {
                Image("piano_Bm7")
                    .padding(.top)
            }
            
            
            
            HStack{
                
               
            
                if (-143)...(-127) ~= location4.x && (-233)...(-216) ~= location4.y &&
                    (115)...(136) ~= location2.x && (-237)...(-215) ~= location2.y &&
                    (249)...(265) ~= location5.x && (-408)...(-392) ~= location5.y
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
                
                Button("五度圏参照") {
                    pianoState = 0
                    isShowGodokenView = true
                }
                .sheet(isPresented: $isShowGodokenView) {
                    Godoken()
                }
                .padding(.all)
                
                
            }
            
            
            
            HStack{
                Image("CM7_piece")
                    .onTapGesture {
                        soundPlayer.CM7Play()
                        pianoState = 11
                    }
                    .position(location1)
                    .gesture(DragGesture().onChanged({ value in location1 = value.location}))
                
                Image("G7_piece")
                    .onTapGesture {
                        soundPlayer.G7Play()
                        pianoState = 15
                    }
                    .position(location2)
                    .gesture(DragGesture().onChanged({ value in location2 = value.location}))
                
                Image("F_piece")
                    .onTapGesture {
                        soundPlayer.FPlay()
                        pianoState = 4
                    }
                    .position(location3)
                    .gesture(DragGesture().onChanged({ value in location3 = value.location}))
                
                Image("D7_piece")
                    .onTapGesture {
                        soundPlayer.D7Play()
                        pianoState = 9
                    }
                    .position(location4)
                    .gesture(DragGesture().onChanged({ value in location4 = value.location}))
                
            }
            .frame(width: 344, height: 80)
            
            
            
            HStack{
                Image("Bm-5_piece")
                    .onTapGesture {
                        soundPlayer.BmPlay()
                        pianoState = 7
                    }
                    .position(location5)
                    .gesture(DragGesture().onChanged({ value in location5 = value.location}))
                
                Image("Am7_piece")
                    .onTapGesture {
                        soundPlayer.Am7Play()
                        pianoState = 16
                    }
                    .position(location6)
                    .gesture(DragGesture().onChanged({ value in location6 = value.location}))
                
                Image("Dm_piece")
                    .onTapGesture {
                        soundPlayer.DmPlay()
                        pianoState = 2
                    }
                    .position(location7)
                    .gesture(DragGesture().onChanged({ value in location7 = value.location}))
                
            }
            .frame(width: 256, height: 80)
            
            
            
        }
        }else if ShowSeikaiView==1{
            Seikai6()
        }
    }
}

struct Pazzle6_cont_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle6_cont()
    }
}
