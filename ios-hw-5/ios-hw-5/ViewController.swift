//
//  ViewController.swift
//  ios-hw-5
//
//  Created by Haider Almansour on 7/4/20.
//  Copyright © 2020 zaro. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var gifView: UIImageView!
    @IBOutlet weak var friendsButton0: UIButton!
    
    @IBOutlet weak var avtorBtn1: UIButton!
    
    @IBOutlet weak var actorBtn2: UIButton!
    
    @IBOutlet weak var actorBtn3: UIButton!
    
    @IBOutlet weak var actorBtn4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            //process error
        }
        
        player.play()
        gifView.isHidden = true
    }

    @IBAction func addGif(_ sender: Any) {
        
        gifView.isHidden = false
        gifView.loadGif(name: "giphy")
        
        
    }
    
    @IBAction func buttonIsTapped(_ sender: UIButton) {
        
        var number = Int((sender.titleLabel?.text!)!)!
        performSegue(withIdentifier: "gotofriends", sender: actors[number])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let seriesController = segue.destination as? details else {
            fatalError()
        }
        seriesController.selectiveActor = sender as! Actor1
    }
}

struct Actor1 {
    var name: String = ""
    var characterName: String
    var age: Int
    var hobbies: String

}

var actors: [Actor1] = [
    Actor1(name: "Jennifer Aniston", characterName: "Rachel Green", age: 51, hobbies: "Shopping"),
    
    Actor1(name: "Courtney Cox", characterName: "Monica Giller", age: 56, hobbies: "Cooking"),
    
    Actor1(name: "Matthew Perry", characterName: "Chandler Bing", age: 50, hobbies: "Joking"),
    
    Actor1(name: "Matt LeBlanc", characterName: "Joey Tribbiani", age: 52, hobbies: "Eating")



]
