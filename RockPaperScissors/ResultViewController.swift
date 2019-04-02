//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by manar on 01/04/2019.
//  Copyright © 2019 manar. All rights reserved.
//

import UIKit

let weapons = ["Rock","Paper","Scissors"]

class ResultViewController: UIViewController {
    
    var playersWeapon : Int?
    var opponentWeapon : Int?

    override func viewDidLoad() {
        print("players weapon: \(weapons[playersWeapon!])")
        print("opponents weapon: \(weapons[opponentWeapon!])")
    }
    

   
}
