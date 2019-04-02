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
    var opponentsWeapon : Int?

    override func viewDidLoad() {
        if let playersWeapon = self.playersWeapon {
            print("players weapon: \(weapons[playersWeapon])")
        }
        if let opponentsWeapon = self.opponentsWeapon{
        print("opponents weapon: \(weapons[opponentsWeapon])")
    }
    
    }
   
}
