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
    private func getOpponentsWeapon ()->Int{
        return Int(arc4random()%3)
    }
    
    // distinguish witch button has been choosen
    private func getPlayerssWeapon (_ sender: UIButton)-> Int{
        return sender.tag
    }
    
   
    
    //MARK: Actions
    // all code segue
    @IBAction func Rock(_ sender: UIButton) {
        var resultCV: ResultViewController
        resultCV = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        resultCV.playersWeapon = getPlayerssWeapon(sender)
        resultCV.opponentsWeapon = getOpponentsWeapon()
        
        present(resultCV, animated: true, completion: nil)
    }
    
    //code & storybaord
    @IBAction func Paper(_ sender: UIButton) {
     performSegue(withIdentifier: "play", sender: sender)
    }
    
    //MARK: segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.playersWeapon = getPlayerssWeapon(sender as! UIButton)
            resultVC.opponentsWeapon = getOpponentsWeapon()
        }
    }
}

