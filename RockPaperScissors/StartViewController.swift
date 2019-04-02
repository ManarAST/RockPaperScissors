//
//  StartViewController.swift
//  RockPaperScissors
//
//  Created by manar on 01/04/2019.
//  Copyright © 2019 manar. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    
    //MARK: helper functions
    //random weapon returns 0,1, or 2
    private func opponentsWeapon ()->Int{
        return Int(arc4random()%3)
    }
    // distinguish witch button has been choosen
    private func playersChoice (_ sender: UIButton)-> Int{
        return sender.tag
    }
    
    //MARK: Actions
    // all code segue
    @IBAction func Rock(_ sender: UIButton) {
        var resultCV: ResultViewController
        resultCV = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        resultCV.playersWeapon = playersChoice(sender)
        resultCV.opponentWeapon = opponentsWeapon()
        
        present(resultCV, animated: true, completion: nil)
    }
    //code & storybaord
    @IBAction func Paper(_ sender: UIButton) {
    }
}

