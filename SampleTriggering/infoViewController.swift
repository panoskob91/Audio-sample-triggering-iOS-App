//
//  infoViewController.swift
//  SampleTriggering
//
//  Created by Paagiotis  Kompotis  on 15/01/2018.
//  Copyright © 2018 Nicholas Arner. All rights reserved.
//

import UIKit

class infoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let neededImages: [String] = ["button1", "REDBTN", "YELLOWBTN", "GREENBTN", "BLUEBTN", "REVERBSLIDER", "PANSLIDER", "DELAYSLIDER", "REVERBPRESETS", ""]
    
    let explanationText: [String] = ["By pressing the round button at the top of the app's layout all the sounds that were triggered stop. So it is a global stop button for this App.", "By pressing one or more red buttons positioned  in the first row of the app, synth keyboard and piano samples sounds are triggered  and start playing and looping", "When a yellow button is pressed which are positioned in the second row of app's layout, bass sounds are triggered and played in loop.", "If a green button is pressed then drum sound samples are triggered and played in  loop.", "By pressing one of the five blue buttons positioned in the last (forth) app's row guitar sound samples are triggered and played in loop.", "This is the slider which defines the dry-wet mix of the reverb. In other words is defines the percentage of the mix in which the reverb will be applied.", "This is a pan slider. A pan slider defines form which speaker the sound will be heard. If the pan is -1 the sound will be heard from the left speaker and if it is 1 it will be heard from the right speaker", "This is a delay slider defining the dry-wet mix. It's values range from 0 to 1, where 0 means that no delay is applied to the mix and 1 that delay is applied to the whole mix (wet signal)", "The last section of th app's layout is the reverb presets options. This section consists of buttons, each one of them simulates how the mix would be heard in various different rooms.", "Finally if the same button is pressde  2 times, the second time the sound stops playing and if tou press it again,  it starts playing and looping"]
    
    let cellID: String = "cellID"
    
    @IBOutlet var infoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.view.backgroundColor = UIColor.black
        self.infoTableView.dataSource = self
        self.infoTableView.delegate = self
        self.infoTableView.backgroundColor = UIColor.black
        self.infoTableView.rowHeight = 100
        infoTableView.separatorColor = UIColor.gray
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return explanationText.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.imageView?.image = UIImage(named: neededImages[indexPath.row])
        cell.textLabel?.backgroundColor = UIColor.black
        cell.textLabel?.numberOfLines = 5
        cell.textLabel?.text = explanationText[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.contentView.backgroundColor = UIColor.black
        cell.textLabel?.textColor = UIColor.white
    }
}




