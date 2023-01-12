//
//  Pazzle2_cont.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/06.
//

import SwiftUI

struct Pazzle3_cont: View {
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
                //Text("x: \(location5.x)y: \(location5.y)")
                Text("右のコード進行を完成させよ")
                
                Button(action:  {
                    soundPlayer.OudouPlay()
                }){
                    Image("saisei")
                }
            }
            
            
            
            HStack{
                
                Image("drag_sq")
                
                Image("onG")
                    .onTapGesture {
                        soundPlayer.GPlay()
                        pianoState = 5
                    }
                
                
                Image("onEm7")
                    .onTapGesture {
                        soundPlayer.Em7Play()
                        pianoState = 13
                    }
                
                Image("onAm7")
                    .onTapGesture {
                        soundPlayer.Am7Play()
                        pianoState = 16
                    }
                
            }
            
            HStack{
                Image("drag_sq")
                
                Image("drag_sq")
                
                Image("onEm7")
                    .onTapGesture {
                        soundPlayer.Em7Play()
                        pianoState = 13
                    }
                
                Image("drag_sq")
                
            }.padding()
            
            
            if pianoState == 0 {
                Image("piano")
                    .padding()
            }else if pianoState == 1 {
                Image("piano_C")
                    .padding()
            }else if pianoState == 2 {
                Image("piano_Dm")
                    .padding()
            }else if pianoState == 3 {
                Image("piano_Em")
                    .padding()
            }else if pianoState == 4 {
                Image("piano_F")
                    .padding()
            }else if pianoState == 5 {
                Image("piano_G")
                    .padding()
            }else if pianoState == 6 {
                Image("piano_Am")
                    .padding()
            }else if pianoState == 7 {
                Image("piano_Bm")
                    .padding()
            }else if pianoState == 8 {
                Image("piano_Fm")
                    .padding()
            }else if pianoState == 11 {
                Image("piano_CM7")
                    .padding()
            }else if pianoState == 12 {
                Image("piano_Dm7")
                    .padding()
            }else if pianoState == 13 {
                Image("piano_Em7")
                    .padding()
            }else if pianoState == 14 {
                Image("piano_FM7")
                    .padding()
            }else if pianoState == 15 {
                Image("piano_G7")
                    .padding()
            }else if pianoState == 16 {
                Image("piano_Am7")
                    .padding()
            }else if pianoState == 17 {
                Image("piano_Bm7")
                    .padding()
            }
            
            
            
            HStack{
                
               
            
                if (111)...(137) ~= location3.x && (-269)...(-247) ~= location3.y &&
                    (-54)...(-34) ~= location2.x && (-269)...(-247) ~= location2.y &&
                    (74)...(93) ~= location5.x && (-358)...(-337) ~= location5.y &&
                    (-183)...(-166) ~= location7.x && (-457)...(-437) ~= location7.y
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
                Image("F_piece")
                    .onTapGesture {
                        soundPlayer.FPlay()
                        pianoState = 4
                    }
                    .position(location1)
                    .gesture(DragGesture().onChanged({ value in location1 = value.location}))
                
                Image("Dm7_piece")
                    .onTapGesture {
                        soundPlayer.Dm7Play()
                        pianoState = 12
                    }
                    .position(location2)
                    .gesture(DragGesture().onChanged({ value in location2 = value.location}))
                
                Image("Am7_piece")
                    .onTapGesture {
                        soundPlayer.Am7Play()
                        pianoState = 16
                    }
                    .position(location3)
                    .gesture(DragGesture().onChanged({ value in location3 = value.location}))
                
                Image("CM7_piece")
                    .onTapGesture {
                        soundPlayer.CM7Play()
                        pianoState = 11
                    }
                    .position(location4)
                    .gesture(DragGesture().onChanged({ value in location4 = value.location}))
                
            }
            .frame(width: 344, height: 80)
            
            
            
            HStack{
                Image("G7_piece")
                    .onTapGesture {
                        soundPlayer.G7Play()
                        pianoState = 15
                    }
                    .position(location5)
                    .gesture(DragGesture().onChanged({ value in location5 = value.location}))
                
                Image("G_piece")
                    .onTapGesture {
                        soundPlayer.GPlay()
                        pianoState = 5
                    }
                    .position(location6)
                    .gesture(DragGesture().onChanged({ value in location6 = value.location}))
                
                Image("FM7_piece")
                    .onTapGesture {
                        soundPlayer.FM7Play()
                        pianoState = 14
                    }
                    .position(location7)
                    .gesture(DragGesture().onChanged({ value in location7 = value.location}))
                
            }
            .frame(width: 256, height: 80)
            
            
            
        }
        }else if ShowSeikaiView==1{
            Seikai3()
        }
    }
}

struct Pazzle3_cont_Previews: PreviewProvider {
    static var previews: some View {
        Pazzle3_cont()
    }
}
