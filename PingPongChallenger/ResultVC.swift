//
//  ResultTeamPlayerVC.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-13.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {

    var teamA : [String] = []
    var teamB : [String] = []

    @IBOutlet weak var btnTeamA: UIButton!
    @IBOutlet weak var btnTeamB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        btnTeamA.setTitle(teamA.toString(), for: .normal)
        btnTeamB.setTitle(teamB.toString(), for: .normal)
    }

    @IBAction func didTapTeamA(_ sender: Any) {
        self.finishGame(teamA, teamB)
    }
    @IBAction func didTapTeamB(_ sender: Any) {
        self.finishGame(teamB, teamA)
    }
    
    func finishGame(_ winners: [String],_ losers: [String]) {
        if let vc = self.navigationController?.viewControllers.first as? ViewController {
            vc.didFinishGame(winners, losers: losers)
            self.navigationController?.popToRootViewController(animated: true)
        }

    }
}
