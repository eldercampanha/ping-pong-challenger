//
//  PlayersVC.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-13.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class PlayersVC: UIViewController {

    @IBOutlet weak var txtPalyerA: UITextField!
    @IBOutlet weak var txtPlayerB: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapNext(_ sender: Any) {
        if txtPalyerA.text == "" {
            return
        }
        if txtPlayerB.text == "" {
            return
        }

        self.performSegue(withIdentifier: "PlayersToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ResultVC {
            vc.teamA = [txtPalyerA.text!]
            vc.teamB = [txtPlayerB.text!]
        }
    }

}
