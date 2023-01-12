//
//  SoundPlayer.swift
//  WaonPazzle_full
//
//  Created by nao nao on 2022/12/10.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let D7Data = NSDataAsset(name: "D7")!.data
    var D7Player: AVAudioPlayer!
    let AmData = NSDataAsset(name: "Am")!.data
    var AmPlayer: AVAudioPlayer!
    let CData = NSDataAsset(name: "C")!.data
    var CPlayer: AVAudioPlayer!
    let GData = NSDataAsset(name: "G")!.data
    var GPlayer: AVAudioPlayer!
    let FData = NSDataAsset(name: "F")!.data
    var FPlayer: AVAudioPlayer!
    let EmData = NSDataAsset(name: "Em")!.data
    var EmPlayer: AVAudioPlayer!
    let BmData = NSDataAsset(name: "Bm-5")!.data
    var BmPlayer: AVAudioPlayer!
    let FmData = NSDataAsset(name: "Fm")!.data
    var FmPlayer: AVAudioPlayer!
    let DmData = NSDataAsset(name: "Dm")!.data
    var DmPlayer: AVAudioPlayer!
    let Am7Data = NSDataAsset(name: "Am7")!.data
    var Am7Player: AVAudioPlayer!
    let CM7Data = NSDataAsset(name: "CM7")!.data
    var CM7Player: AVAudioPlayer!
    let G7Data = NSDataAsset(name: "G7")!.data
    var G7Player: AVAudioPlayer!
    let FM7Data = NSDataAsset(name: "FM7")!.data
    var FM7Player: AVAudioPlayer!
    let Em7Data = NSDataAsset(name: "Em7")!.data
    var Em7Player: AVAudioPlayer!
    let Bm7Data = NSDataAsset(name: "Bm7-5")!.data
    var Bm7Player: AVAudioPlayer!
    let Dm7Data = NSDataAsset(name: "Dm7")!.data
    var Dm7Player: AVAudioPlayer!
    let KanonData = NSDataAsset(name: "kanon_code")!.data
    var KanonPlayer: AVAudioPlayer!
    let CodeSinnkouData = NSDataAsset(name: "FGEmAm")!.data
    var CodeSinnkouPlayer: AVAudioPlayer!
    let OudouData = NSDataAsset(name: "Oudou")!.data
    var OudouPlayer: AVAudioPlayer!
    let BGMData = NSDataAsset(name: "BGM")!.data
    var BGMPlayer: AVAudioPlayer!
    let TraitoneData = NSDataAsset(name: "Traitone")!.data
    var TraitonePlayer: AVAudioPlayer!
    

    
    func AmPlay(){
        do{
            AmPlayer = try AVAudioPlayer(data: AmData)
            AmPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func DmPlay(){
        do{
            DmPlayer = try AVAudioPlayer(data: DmData)
            DmPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func CPlay(){
        do{
            CPlayer = try AVAudioPlayer(data: CData)
            CPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func GPlay(){
        do{
            GPlayer = try AVAudioPlayer(data: GData)
            GPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func FPlay(){
        do{
            FPlayer = try AVAudioPlayer(data: FData)
            FPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func EmPlay(){
        do{
            EmPlayer = try AVAudioPlayer(data: EmData)
            EmPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func FmPlay(){
        do{
            FmPlayer = try AVAudioPlayer(data: FmData)
            FmPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func BmPlay(){
        do{
            BmPlayer = try AVAudioPlayer(data: BmData)
            BmPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func Am7Play(){
        do{
            Am7Player = try AVAudioPlayer(data: Am7Data)
            Am7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func Dm7Play(){
        do{
            Dm7Player = try AVAudioPlayer(data: Dm7Data)
            Dm7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func CM7Play(){
        do{
            CM7Player = try AVAudioPlayer(data: CM7Data)
            CM7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func G7Play(){
        do{
            G7Player = try AVAudioPlayer(data: G7Data)
            G7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func FM7Play(){
        do{
            FM7Player = try AVAudioPlayer(data: FM7Data)
            FM7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func Em7Play(){
        do{
            Em7Player = try AVAudioPlayer(data: Em7Data)
            Em7Player.play()
        }catch{
            print("Error")
        }
    }
    
    
    func Bm7Play(){
        do{
            Bm7Player = try AVAudioPlayer(data: Bm7Data)
            Bm7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func D7Play(){
        do{
            D7Player = try AVAudioPlayer(data: D7Data)
            D7Player.play()
        }catch{
            print("Error")
        }
    }
    
    func KanonPlay(){
        do{
            KanonPlayer = try AVAudioPlayer(data: KanonData)
            KanonPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func CodeSinnkouPlay(){
        do{
            CodeSinnkouPlayer = try AVAudioPlayer(data: CodeSinnkouData)
            CodeSinnkouPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func OudouPlay(){
        do{
            OudouPlayer = try AVAudioPlayer(data: OudouData)
            OudouPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func BGMPlay(){
        do{
            BGMPlayer = try AVAudioPlayer(data: BGMData)
            BGMPlayer.play()
        }catch{
            print("Error")
        }
    }
    
    func TraitonePlay(){
        do{
            TraitonePlayer = try AVAudioPlayer(data: TraitoneData)
            TraitonePlayer.play()
        }catch{
            print("Error")
        }
    }
    
    

}
