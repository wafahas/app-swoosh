//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Wafaa Abu Dawod on 12/19/18.
//  Copyright © 2018 Wafaa Abu Dawod. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player:Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var nextBtn: BorderButton!
    

    @IBAction func OnNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenstapped(_ sender: Any) {
   SelectedLeague(leagueType:"men")
    }
    
    @IBAction func onWementapped(_ sender: Any) {
    SelectedLeague(leagueType:"women")
    }
    
    @IBAction func onCoedtapped(_ sender: Any) {
        SelectedLeague(leagueType:"Coed")
       
    }
    
    func SelectedLeague(leagueType: String){
        player.desiredLeague=leagueType
        nextBtn.isEnabled=true
        
    }
    // override func prepare( for segue: UIstoryboardSegue, sender:Any?){ if let skillVC = segue.destination  as? SkillVC { skillVC.player= player}}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
        skillVC.player = player
        }
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
