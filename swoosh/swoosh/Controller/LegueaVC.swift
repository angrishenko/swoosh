//
//  LegueaVC.swift
//  swoosh
//
//  Created by Антон Грищенко on 17.03.2018.
//  Copyright © 2018 Антон Грищенко. All rights reserved.
//

import UIKit

class LegueaVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var coedBtn: BorderButton!
    @IBOutlet weak var womenBtn: BorderButton!
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    var clicked = false
    @IBAction func onMensTapped(_ sender: Any) {
        if (clicked) {
            womenBtn.isEnabled = true
            coedBtn.isEnabled = true
            mensBtn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6027178697)
            clicked = false
        }
        else {
            tapped(leagueType: "mens")
            mensBtn.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            clicked = true
            womenBtn.isEnabled = false
            coedBtn.isEnabled = false
        }
        
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
        if (clicked) {
            mensBtn.isEnabled = true
            coedBtn.isEnabled = true
            womenBtn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6027178697)
            clicked = false
        }
        else {
            tapped(leagueType: "mens")
            womenBtn.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            clicked = true
            mensBtn.isEnabled = false
            coedBtn.isEnabled = false
        }
        
    }
    
     @IBAction func onCoTapped(_ sender: Any) {
        if (clicked) {
            womenBtn.isEnabled = true
            mensBtn.isEnabled = true
            coedBtn.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6027178697)
            clicked = false
        }
        else {
            tapped(leagueType: "mens")
            coedBtn.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            clicked = true
            womenBtn.isEnabled = false
            mensBtn.isEnabled = false
        }
     }
    
    func tapped(leagueType:String) {
        player.desireLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}
