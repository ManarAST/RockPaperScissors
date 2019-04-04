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
    
    
    //MARK: propertyes
    var playersWeapon : Int?
    var opponentsWeapon : Int?

    //MARK: Outlets
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var opponentWeaponImage: UIImageView!
    
    override func viewDidLoad() {
        compare()
    }
    
    //MARK: helper functions
    //TODO: compering function (PW = playerWeapon, OW = opponentWeapon)
    
    func compare (){
        if weapons[playersWeapon!] == weapons[opponentsWeapon!] {
             showResult()
        }else{
            switch (weapons[playersWeapon!],weapons[opponentsWeapon!]) {
        case ("Rock","Scissors"):
            showResult("win")
                
        case ("Scissors","Paper"):
            showResult("win")
                
        case ("Paper","Rock"):
            showResult("win")
                
        default:
            showResult("lose")
            }
        }
    }
    //TODO: showing result function
    func showResult (_ result: String = "tie"){
        let imageName: String
            switch result {
            case "win":
                imageName = "\(weapons[playersWeapon!])Beats\(weapons[opponentsWeapon!])"
                
                
            case "lose":
                resultLabel.text = "You Lose"
                //changing color to bright blue
                resultLabel.textColor = UIColor(red: 193/255, green: 236/255, blue: 255/255, alpha: 1.0)
                imageName = "\(weapons[opponentsWeapon!])Beats\(weapons[playersWeapon!])"
                
                //if not above then its a tie
            default:
                resultLabel.text = "It's a Tie"
                resultLabel.textColor = UIColor.white
                imageName = "itsATie"
                }
        
            resultImage.image = UIImage(named: imageName)
            opponentWeaponImage.image = UIImage(named: weapons[opponentsWeapon!])
     
    }
    
    @IBAction func playAgain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
  
}
