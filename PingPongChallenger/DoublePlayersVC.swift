//
//  DoublePlayersVC.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-26.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class DoublePlayersVC : UIViewController {
    
    
    @IBOutlet weak var txtTeamAPlayerA: UITextField!
    @IBOutlet weak var txtTeamAPlayerB: UITextField!
    @IBOutlet weak var txtTeamBPlayerB: UITextField!
    @IBOutlet weak var txtTeamBPlayerA: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapNext(_ sender: Any) {
        if txtTeamAPlayerA.text == "" {
            return
        }
        if txtTeamAPlayerB.text == "" {
            return
        }
        if txtTeamBPlayerA.text == "" {
            return
        }
        if txtTeamBPlayerB.text == "" {
            return
        }
        
        self.performSegue(withIdentifier: "TeamPlayersToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ResultVC {
            vc.teamA = [txtTeamAPlayerA.text!, txtTeamAPlayerB.text!]
            vc.teamB = [txtTeamBPlayerA.text!, txtTeamBPlayerB.text!]
        }
    }
}
