//
//  ViewController.swift
//  SampleTriggering
//
//  Created by Nicholas Arner on 5/8/16. Edited Andy Hunt 23/9/16
//  Copyright © 2016 University of York Department of Electronics 
//

import AudioKit
import UIKit

var audioSampler: AudioSampler!
var firsttime=true
class ViewController: UIViewController {
    
    
// First declare a global variable so we can access the
// functions in the other class AudioSampler
    
    let WhiteColor:UIColor = UIColor(red: 255/255, green: 255/255, blue: 250/255, alpha: 1)
    
    let blackColor:UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
    
    let redColor:UIColor = UIColor(red: 251/255, green: 0/255, blue: 7/255, alpha: 1)
    
    let yellowColor:UIColor = UIColor(red: 255/255, green: 255/255, blue: 10/255, alpha: 1)
    
    let greenColor:UIColor = UIColor(red: 44/255, green: 255/255, blue: 8/255, alpha: 1)
    
    let blueColor:UIColor = UIColor(red: 22/255, green: 175/255, blue: 254/255, alpha: 1)
  
    //Buttons Outlets
    @IBOutlet weak var BTN11: UIButton!
    @IBOutlet weak var BTN12: UIButton!
    @IBOutlet weak var BTN13: UIButton!
    @IBOutlet weak var BTN14: UIButton!
    @IBOutlet weak var BTN15: UIButton!
    //Second row of Buttons
    @IBOutlet weak var BTN21: UIButton!
    @IBOutlet weak var BTN22: UIButton!
    @IBOutlet weak var BTN23: UIButton!
    @IBOutlet weak var BTN24: UIButton!
    @IBOutlet weak var BTN25: UIButton!
    //third row of buttons
    @IBOutlet weak var BTN31: UIButton!
    @IBOutlet weak var BTN32: UIButton!
    @IBOutlet weak var BTN33: UIButton!
    @IBOutlet weak var BTN34: UIButton!
    @IBOutlet weak var BTN35: UIButton!
    //4th row of buttons
    @IBOutlet weak var BTN41: UIButton!
    @IBOutlet weak var BTN42: UIButton!
    @IBOutlet weak var BTN43: UIButton!
    @IBOutlet weak var BTN44: UIButton!
    @IBOutlet weak var BTN45: UIButton!
    // reverb presets outlets 
    @IBOutlet weak var SR: UIButton!
    @IBOutlet weak var MediumRoom: UIButton!
    @IBOutlet weak var LargeRoom: UIButton!
    @IBOutlet weak var MediumHall: UIButton!
    @IBOutlet weak var LargeHall: UIButton!
    @IBOutlet weak var Plate: UIButton!
    @IBOutlet weak var MediumChamber: UIButton!
    @IBOutlet weak var LargeChamber: UIButton!
    @IBOutlet weak var LargeRoom2: UIButton!
    @IBOutlet weak var MediuHall2: UIButton!
    @IBOutlet weak var MediumHall3: UIButton!
    @IBOutlet weak var LargeHall2: UIButton!
    @IBOutlet weak var Cathedral: UIButton!
    
    
    
    override func viewDidLoad() {
        //BTN11.layer.cornerRadius = 15
        //BTN11.layer.masksToBounds = true

        super.viewDidLoad()
        if firsttime {
        audioSampler = AudioSampler()
        firsttime=false
        }
        
    }
    
    @IBAction func StopBTN(_ sender: UIButton) {
    //code for the sound to be stoped when the global stop button is pressed
    audioSampler.player11.stop()
    audioSampler.player12.stop()
    audioSampler.player13.stop()
    audioSampler.player14.stop()
    audioSampler.player15.stop()
    audioSampler.player21.stop()
    audioSampler.player22.stop()
    audioSampler.player23.stop()
    audioSampler.player24.stop()
    audioSampler.player25.stop()
    audioSampler.player31.stop()
    audioSampler.player32.stop()
    audioSampler.player33.stop()
    audioSampler.player34.stop()
    audioSampler.player35.stop()
    audioSampler.player41.stop()
    audioSampler.player42.stop()
    audioSampler.player43.stop()
    audioSampler.player44.stop()
    audioSampler.player45.stop()
    
    //code for each button to be stoped if pressed twice
    }
    @IBAction func InfoBTN(_ sender: UIButton) {
    }
    @IBAction func BTN11(_ sender: UIButton) {
    audioSampler.PlayOrStopSample11()
    audioSampler.player11.looping=true
    
    //BTN11.backgroundColor = WhiteColor
    BTN11.showsTouchWhenHighlighted = true

    }
    
    @IBAction func BTN12(_ sender: UIButton) {
    audioSampler.PlayOrStopSample12()
    audioSampler.player12.looping = true
    //start looping the sample
    
    //BTN12.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }
    
    @IBAction func BTN13(_ sender: UIButton) {
    audioSampler.PlayOrStopSample13()
    audioSampler.player13.looping=true
    
    //BTN13.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    @IBAction func BTN14(_ sender: UIButton) {
    audioSampler.PlayOrStopSample14()
    audioSampler.player14.looping=true
    
    //BTN14.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }

    @IBAction func BTN15(_ sender: UIButton) {
    audioSampler.PlayOrStopSample15()
    audioSampler.player15.looping=true
    
    //BTN15.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    //2nd Row of Buttons
    @IBAction func BTN21(_ sender: UIButton) {
    audioSampler.PlayOrStopSample21()
    audioSampler.player21.looping=true
    
    //BTN21.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    @IBAction func BTN22(_ sender: UIButton) {
    audioSampler.PlayOrStopSample22()
    audioSampler.player22.looping=true
   
    //BTN22.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    @IBAction func BTN23(_ sender: UIButton) {
    audioSampler.PlayOrStopSample23()
    audioSampler.player23.looping=true
    
    //BTN23.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    
    @IBAction func BTN24(_ sender: UIButton) {
    audioSampler.PlayOrStopSample24()
    audioSampler.player24.looping=true
    
    //BTN24.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    @IBAction func BTN25(_ sender: UIButton) {
    audioSampler.PlayOrStopSample25()
    audioSampler.player25.looping=true
    
    //BTN25.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    //3rd Row of buttons
    @IBAction func BTN31(_ sender: UIButton) {
    audioSampler.PlayOrStopSample31()
    audioSampler.player31.looping=true
    
    //BTN31.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    @IBAction func BTN32(_ sender: UIButton) {
    audioSampler.PlayOrStopSample32()
    audioSampler.player32.looping=true
    
    //BTN32.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    
    @IBAction func BTN33(_ sender: UIButton) {
    audioSampler.PlayOrStopSample33()
    audioSampler.player33.looping=true
    
    //BTN33.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    
    @IBAction func BTN34(_ sender: UIButton) {
    audioSampler.PlayOrStopSample34()
    audioSampler.player34.looping=true
    
    //BTN34.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    
    @IBAction func BTN35(_ sender: UIButton) {
    audioSampler.PlayOrStopSample35()
    audioSampler.player35.looping=true
    
    //BTN35.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
 
    }
    //4th row of buttons
    @IBAction func BTN41(_ sender: UIButton) {
    audioSampler.PlayOrStopSample41()
    audioSampler.player41.looping=true
    
    //BTN41.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    
    }
    
    @IBAction func BTN42(_ sender: UIButton) {
    audioSampler.PlayOrStopSample42()
    audioSampler.player42.looping=true
    
    //BTN42.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    
    }
    @IBAction func BTN43(_ sender: UIButton) {
    audioSampler.PlayOrStopSample43()
    audioSampler.player43.looping=true
    
    //BTN43.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
 
    }
    
    @IBAction func BTN44(_ sender: UIButton) {
    audioSampler.PlayOrStopSample44()
    audioSampler.player44.looping=true
    
    //BTN44.backgroundColor = WhiteColor
    
    sender.showsTouchWhenHighlighted = true
 
    }
    
    @IBAction func BTN45(_ sender: UIButton) {
    audioSampler.PlayOrStopSample45()
    audioSampler.player45.looping=true
    
    //BTN45.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true

    }
    
    
    //This section of code is for the app's sliders
    
    
    @IBAction func ReverbSlider(_ sender: UISlider) {
    audioSampler.reverb.dryWetMix = Double(sender.value)
    REVLabel.text = String(format: "%0.2f", audioSampler.reverb.dryWetMix)
    }
    
    @IBAction func DellaySlider(_ sender: UISlider) {
    audioSampler.delay.dryWetMix
        = Double(sender.value)
        DelayLabel.text = String(format: "%0.2f", audioSampler.delay.dryWetMix)
    }
    @IBAction func
        PanningSlider(_ sender: UISlider) {
   audioSampler.panning.pan = Double(sender.value)
        PanningLabel.text = String(format: "%0.2f", audioSampler.panning.pan)
    }
    
    
    
    // outlets of app's sliders
    @IBOutlet var PanningSlider: UISlider!
    
    @IBOutlet var REVLabel: UILabel!
    
    @IBOutlet var DelayLabel: UILabel!
    @IBOutlet var PanningLabel: UILabel!
    
    
    
    //this section is for app's reverb presets buttons
    
    
    
    @IBAction func SR_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.smallRoom)
      
        
    sender.showsTouchWhenHighlighted = true
    }
    @IBAction func MR_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.mediumRoom)
    
        //sender.backgroundColor = WhiteColor
    
        sender.showsTouchWhenHighlighted = true
    }
    @IBAction func LR_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.largeRoom)
    
        //sender.backgroundColor = WhiteColor
       sender.showsTouchWhenHighlighted = true
    }
    
    @IBAction func MH_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.mediumHall)
    
        //sender.backgroundColor = WhiteColor
       sender.showsTouchWhenHighlighted = true
    }
    @IBAction func LH_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.largeHall)
    
        //sender.backgroundColor = WhiteColor
      sender.showsTouchWhenHighlighted = true
    }
    
    @IBAction func PL_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.plate)
    
        //sender.backgroundColor = WhiteColor
    
    sender.showsTouchWhenHighlighted = true
    }
    @IBAction func MC_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.mediumChamber)
    
        //sender.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }
    @IBAction func LC_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.largeChamber)
    
        //sender.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }
    
    @IBAction func C_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.cathedral)
    
        //sender.backgroundColor = WhiteColor
        sender.showsTouchWhenHighlighted = true
    }

    @IBAction func LR2_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.largeRoom2)
    
        //sender.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }
    @IBAction func MH2_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.mediumHall2)
       
        //sender.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }

    @IBAction func MH3_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.mediumHall3)
    
        //sender.backgroundColor = WhiteColor
        
        sender.showsTouchWhenHighlighted = true
    }

    @IBAction func LH2_BTN(_ sender: UIButton) {
    audioSampler.reverb.loadFactoryPreset(.largeHall2)
    
        //sender.backgroundColor = WhiteColor
    sender.showsTouchWhenHighlighted = true
    }
    
   @IBAction func ButtonRelease(_ sender: UIButton) {
        switch (sender.tag) {
        //1st row of Buttons
        case 1...5:
            sender.backgroundColor = redColor
            break
        
        //2nd Row of Buttons
        case 6...10:
            sender.backgroundColor = yellowColor
            break
        
        //3rd Row of Buttons
        
        case 11...15:
            sender.backgroundColor = greenColor
            break
        
        //4th Row of Button
        
        case 16...20:
            sender.backgroundColor = blueColor
            break
            
        // Reverb presets
        
        case 24...36:
            sender.backgroundColor = blackColor
            break
             
 
        default:
            break
 
        }
    
    }

    
}
