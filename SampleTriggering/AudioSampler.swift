//
//  AudioSampler.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16. Edited Andy Hunt 23/9/16
//  Copyright © 2016 University of York Department of Electronics 
//

import Foundation
import AudioKit

open class AudioSampler {
    
    // Declare AudioPlayers pointer as class variables
    // so they can be accessed by the functions below
    
    
    var player11:AKAudioPlayer //first Synth sound
    var player12:AKAudioPlayer//second Synth sound
    var player13:AKAudioPlayer//third Synth sound
    var player14:AKAudioPlayer//forth Synth sound
    var player15:AKAudioPlayer//fifth Synth sound
    var player21:AKAudioPlayer//first Bass sound
    var player22:AKAudioPlayer//second Bass sound
    var player23:AKAudioPlayer//third Bass sound
    var player24:AKAudioPlayer//forth Bass sound
    var player25:AKAudioPlayer//fifth Bass sound
    var player31:AKAudioPlayer//first Drums sound
    var player32:AKAudioPlayer//second Drums sound
    var player33:AKAudioPlayer//third Drums sound 
    var player34:AKAudioPlayer//forth Drums sound
    var player35:AKAudioPlayer//fifth Drums sound
    var player41:AKAudioPlayer//first Guitar sound
    var player42:AKAudioPlayer//second Guitar sound
    var player43:AKAudioPlayer//third Guitar sound
    var player44:AKAudioPlayer//forth Guitar sound 
    var player45:AKAudioPlayer//fifth Guitar sound
    let mixer: AKMixer!
    
    
    
    var reverb: AKReverb!
    var delay :AKDelay!
    var panning :AKPanner!
    init () {
        
        // Load the audio samples into audio file readers
        
        
        let sample11 = try! AKAudioFile(readFileName:"EDM2_128_D_Melody_Loop_17.wav", baseDir:.resources)//first synth sample
        let sample12 = try! AKAudioFile(readFileName:"FRM_126_Amin_Piano_Lp_05.wav", baseDir: .resources )//second synth sample
        let sample13 = try! AKAudioFile(readFileName: "FRM_128_Dmin_Piano_Lp_05.wav", baseDir: .resources)//third synth sample
        let sample14 = try! AKAudioFile(readFileName: "FRM_128_Emin_Opus.wav", baseDir: .resources)//forth synth sample
        let sample15 = try! AKAudioFile(readFileName: "LOA_120_C_Rhodes_Jaguar1.wav", baseDir: .resources)//fifth synth sample
        
        let sample21 = try! AKAudioFile(readFileName: "FRM_126_Amin_SYNTHBASS_03.wav", baseDir: .resources)//first Bass sample
        let sample22 = try! AKAudioFile(readFileName: "FRM_126_Dmin_LIVEBASS_02.wav", baseDir: .resources)//second Bass sample
        let sample23 = try! AKAudioFile(readFileName: "FRM_126_Emin_LIVEBASS_03.wav",baseDir: .resources)//third Bass sample
        let sample24 = try! AKAudioFile(readFileName: "FRM_128_Amin_SYNTHBASS_11.wav", baseDir: .resources)//forth Bass sample
        let sample25 = try! AKAudioFile(readFileName: "FRM_128_Dmin_SYNTHBASS_08.wav",baseDir: .resources)//fifth Bass sample
        
        let sample31 = try! AKAudioFile(readFileName: "BHG2_125_Drums_02_Full.wav",baseDir: .resources)//first Drums sample
        let sample32 = try! AKAudioFile(readFileName: "BHG2_125_Drums_05_Full_c.wav",baseDir: .resources)//second Drums sample
        let sample33 = try! AKAudioFile(readFileName: "DWD_122_TrueFull.wav",baseDir: .resources)//third Drums sample
        let sample34 = try! AKAudioFile(readFileName: "DWD_128_Castro_02.wav", baseDir: .resources)//forth Drums sample
        let sample35 = try! AKAudioFile(readFileName: "DWD_128_Mechin.wav",baseDir: .resources)//fifth Drums sample
        
        let sample41 = try! AKAudioFile(readFileName: "BS_120_E_HelloSweetie_07.wav",baseDir: .resources)//first Guitar sample
        let sample42 = try! AKAudioFile(readFileName: "BS_130_E_RealDusty_06.wav", baseDir: .resources)//second Guitar sample
        let sample43 = try! AKAudioFile(readFileName: "BS_130_E_RealDusty_12.wav",baseDir: .resources)//third Guitar sample
        let sample44 = try! AKAudioFile(readFileName: "looperman-l-0571945-0101064-rafztar-lose-some-win-some.wav",baseDir: .resources)//forth guitar sample(looperman.com)
        let sample45 = try! AKAudioFile(readFileName: "looperman-l-1564425-0098567-rasputin1963-wah-wah-funk-guitar.wav",baseDir: .resources)//fifth guitar sample(looperma.com)
        // Create audio players for each audio file
        
        
        
        player11 = try! AKAudioPlayer(file: sample11)//player of first synth sample
        player12 = try! AKAudioPlayer(file: sample12)//player of second synth sample
        player13 = try! AKAudioPlayer(file: sample13)//player of third synth sample
        player14 = try! AKAudioPlayer(file: sample14)//player of forth synth sample
        player15 = try! AKAudioPlayer(file: sample15)//player of fifth synth sample
        
        player21 = try! AKAudioPlayer(file: sample21)//player of first Bass sample
        player22 = try! AKAudioPlayer(file: sample22)//player of second Bass sample
        player23 = try! AKAudioPlayer(file: sample23)//player of third Bass sample
        player24 = try! AKAudioPlayer(file: sample24)//player of forth Bass sample
        player25 = try! AKAudioPlayer(file: sample25)//player of fifth Bass sample
        
        player31 = try! AKAudioPlayer(file: sample31)//player of first Drums sample
        player32 = try! AKAudioPlayer(file: sample32)//player of second Drums sample
        player33 = try! AKAudioPlayer(file: sample33)//player of third Drums sample
        player34 = try! AKAudioPlayer(file: sample34)//player of forth Drms sample
        player35 = try! AKAudioPlayer(file: sample35)//player of fifth Drums sample
        
        player41 = try! AKAudioPlayer(file: sample41)//player of first Guitar sample
        player42 = try! AKAudioPlayer(file: sample42)//player of second Guitar sample
        player43 = try! AKAudioPlayer(file: sample43)//player of third Guitar sample
        player44 = try! AKAudioPlayer(file: sample44)//player of forth Guitar sample(looperman.com)
        player45 = try! AKAudioPlayer(file: sample45)//player of fifth Guitar sample(looperman.com)
        // Create a mixer object with the audio players as inputs
        
         mixer = AKMixer(player11,player12,player13,player14,player15,player21,player22,player23,player24,player25,player31,player32,player33,player34,player35,player41,player42,player43,player44,player45)
        reverb = AKReverb(mixer)
        reverb.dryWetMix = 0.0
        reverb.start()  
        delay = AKDelay(reverb)
        delay.dryWetMix=0.0
        delay.time=0.3
        panning = AKPanner(delay)
        
        
        delay.start()
        AudioKit.output = panning // Let delay's output go to AudioKit o/p
        AudioKit.start()
        
    }
    
    // These functions are accessible outside the class so that the
    // ViewController can access them, and trigger the files.
 
    
    open func PlaySample11(){  //function for trigering the sample of the (1,1) element of the main storyboard's array
        player11.play()
    }
    
    open func PlayOrStopSample11(){ // fuction for stop trigering the sample of the (1,1) element of the main storyboard's array when this button is pressed for second time
        if player11.isPlaying && player11.playhead < player11.duration {
            
            player11.stop()
        }else{
            
            player11.play()
        }

    }
    
    open func PlaySample12(){  //function for trigering the sample of the (1,2) element of the main storyboard's array
        player12.play()
    }
    
    
    open func PlayOrStopSample12(){ //fuction for stop trigering the sample of the (1,2) element of the main storyboard's array when this button is pressed for second time
        if player12.isPlaying && player12.playhead < player12.duration {
            
            player12.stop()
        }else{
            
            player12.play()
        }
        
    }

    
    open func PlaySample13(){  //function for trigering the sample of the (1,3) element of the main storyboard's array
        player13.play()
    }
    
    open func PlayOrStopSample13(){ //fuction for stop trigering the sample of the (1,3) element of the main storyboard's array when this button is pressed for second time
        if player13.isPlaying && player13.playhead < player13.duration {
            
            player13.stop()
        }else{
            
            player13.play()
        }
        
    }

    open func PlaySample14(){  //function for trigering the sample of the (1,4) element of the main storyboard's array
        player14.play()
    }
    
    open func PlayOrStopSample14(){ //fuction for stop trigering the sample of the (1,4) element of the main storyboard's array when this button is pressed for second time
        if player14.isPlaying && player14.playhead < player14.duration {
            
            player14.stop()
        }else{
            
            player14.play()
        }
        
    }

    open func PlaySample15(){  //function for trigering the sample of the (1,5) element of the main storyboard's array
        player15.play()
    }
    
    open func PlayOrStopSample15(){ //fuction for stop trigering the sample of the (1,5) element of the main storyboard's array when this button is pressed for second time
        if player15.isPlaying && player15.playhead < player15.duration {
            
            player15.stop()
        }else{
            
            player15.play()
        }
        
    }

    open func PlaySample21(){  //function for trigering the sample of the (2,1) element of the main storyboard's array
        player21.play()
    }
    
    open func PlayOrStopSample21(){ //fuction for stop trigering the sample of the (2,1) element of the main storyboard's array when this button is pressed for second time
        if player21.isPlaying && player21.playhead < player21.duration {
            
            player21.stop()
        }else{
            
            player21.play()
        }
        
    }

    open func PlaySample22(){  //function for trigering the sample of the (2,2) element of the main storyboard's array
        player22.play()
    }
    
    open func PlayOrStopSample22(){ //fuction for stop trigering the sample of the (2,2) element of the main storyboard's array when this button is pressed for second time
        if player22.isPlaying && player22.playhead < player22.duration {
            
            player22.stop()
        }else{
            
            player22.play()
        }
        
    }

    
    open func PlaySample23(){  //function for trigering the sample of the (2,3) element of the main storyboard's array
        player23.play()
    }
    
    open func PlayOrStopSample23(){ //fuction for stop trigering the sample of the (2,3) element of the main storyboard's array when this button is pressed for second time
        if player23.isPlaying && player23.playhead < player23.duration {
            
            player23.stop()
        }else{
            
            player23.play()
        }
        
    }

    open func PlaySample24(){  //function for trigering the sample of the (2,4) element of the main storyboard's array
        player24.play()
    }
    
    open func PlayOrStopSample24(){ //fuction for stop trigering the sample of the (2,4) element of the main storyboard's array when this button is pressed for second time
        if player24.isPlaying && player24.playhead < player24.duration {
            
            player24.stop()
        }else{
            
            player24.play()
        }
        
    }

    open func PlaySample25(){  //function for trigering the sample of the (2,5) element of the main storyboard's array
        player25.play()
    }
    
    open func PlayOrStopSample25(){ //fuction for stop trigering the sample of the (2,5) element of the main storyboard's array when this button is pressed for second time
        if player25.isPlaying && player25.playhead < player25.duration {
            
            player25.stop()
        }else{
            
            player25.play()
        }
        
    }

    open func PlaySample31(){  //function for trigering the sample of the (3,1) element of the main storyboard's array
        player31.play()
    }
    
    open func PlayOrStopSample31(){ //fuction for stop trigering the sample of the (3,1) element of the main storyboard's array when this button is pressed for second time
        if player31.isPlaying && player31.playhead < player31.duration {
            
            player31.stop()
        }else{
            
            player31.play()
        }
        
    }

    
    open func PlaySample32(){  //function for trigering the sample of the (3,2) element of the main storyboard's array
        player32.play()
    }
    
    
    open func PlayOrStopSample32(){ //fuction for stop trigering the sample of the (3,2) element of the main storyboard's array when this button is pressed for second time
        if player32.isPlaying && player32.playhead < player32.duration {
            
            player32.stop()
        }else{
            
            player32.play()
        }
        
    }

    
    open func PlaySample33(){  //function for trigering the sample of the (3,3) element of the main storyboard's array
        player33.play()
    }
    
    open func PlayOrStopSample33(){ //fuction for stop trigering the sample of the (3,3) element of the main storyboard's array when this button is pressed for second time
        if player33.isPlaying && player33.playhead < player33.duration {
            
            player33.stop()
        }else{
            
            player33.play()
        }
        
    }

    
    open func PlaySample34(){  //function for trigering the sample of the (3,4) element of the main storyboard's array
        player34.play()
    }
    
    open func PlayOrStopSample34(){ //fuction for stop trigering the sample of the (3,4) element of the main storyboard's array when this button is pressed for second time
        if player34.isPlaying && player34.playhead < player34.duration {
            
            player34.stop()
        }else{
            
            player34.play()
        }
        
    }

    
    open func PlaySample35(){  //function for trigering the sample of the (3,5) element of the main storyboard's array
        player35.play()
    }
    
    open func PlayOrStopSample35(){ //fuction for stop trigering the sample of the (3,5) element of the main storyboard's array when this button is pressed for second time
        if player35.isPlaying && player35.playhead < player35.duration {
            
            player35.stop()
        }else{
            
            player35.play()
        }
        
    }

    
    open func PlaySample41(){  //function for trigering the sample of the (4,1) element of the main storyboard's array
        player41.play()
    }
    
    open func PlayOrStopSample41(){ //fuction for stop trigering the sample of the (4,1) element of the main storyboard's array when this button is pressed for second time
        if player41.isPlaying && player41.playhead < player41.duration {
            
            player41.stop()
        }else{
            
            player41.play()
        }
        
    }

    
    open func PlaySample42(){  //function for trigering the sample of the (4,2) element of the main storyboard's array
        player42.play()
    }
    
    open func PlayOrStopSample42(){ //fuction for stop trigering the sample of the (4,2) element of the main storyboard's array when this button is pressed for second time
        if player42.isPlaying && player42.playhead < player42.duration {
            
            player42.stop()
        }else{
            
            player42.play()
        }
        
    }

    
    open func PlaySample43(){  //function for trigering the sample of the (4,3) element of the main storyboard's array
        player43.play()
    }
    
    open func PlayOrStopSample43(){ //fuction for stop trigering the sample of the (4,3) element of the main storyboard's array when this button is pressed for second time
        if player43.isPlaying && player43.playhead < player43.duration {
            
            player43.stop()
        }else{
            
            player43.play()
        }
        
    }

    
    open func PlaySample44(){  //function for trigering the sample of the (4,4) element of the main storyboard's array
        player44.play()
    }
    
    open func PlayOrStopSample44(){ //fuction for stop trigering the sample of the (4,4) element of the main storyboard's array when this button is pressed for second time
        if player44.isPlaying && player44.playhead < player44.duration {
            
            player44.stop()
        }else{
            
            player44.play()
        }
        
    }

    
    open func PlaySample45(){  //function for trigering the sample of the (4,5) element of the main storyboard's array
        player45.play()
    }

    open func PlayOrStopSample45(){ //fuction for stop trigering the sample of the (4,5) element of the main storyboard's array when this button is pressed for second time
        if player45.isPlaying && player45.playhead < player45.duration {
            
            player45.stop()
        }else{
            
            player45.play()
        }
        
    }
    
}



