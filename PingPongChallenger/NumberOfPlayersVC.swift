//
//  NumberOfPlayersVC.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-13.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

protocol NumberOfPlayersVCProtocol {
    func didFinishGame(_ users: [User], results: [Result])
}

class NumberOfPlayersVC: UIViewController {

    var delegate: NumberOfPlayersVCProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
