//
//  details.swift
//  ios-hw-5
//
//  Created by Haider Almansour on 7/7/20.
//  Copyright © 2020 zaro. All rights reserved.
//

import UIKit

class details: UIViewController {

    var selectiveActor: Actor1 = Actor1(name: "Jennifer Aniston", characterName: "Rachel Green", age: 50, hobbies: "modeling")
    
    @IBOutlet weak var actorimage: UIImageView!
    
    @IBOutlet weak var actorname: UILabel!
    
    @IBOutlet weak var actorhobby: UILabel!
    
    @IBOutlet weak var actorage: UILabel!
    
    @IBOutlet weak var charactername: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        actorimage.image = UIImage(named: selectiveActor.name)
        
        actorhobby.text = selectiveActor.hobbies
        
        actorage.text = String(selectiveActor.age)
        
        actorname.text = selectiveActor.name
        
        charactername.text = selectiveActor.characterName
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
