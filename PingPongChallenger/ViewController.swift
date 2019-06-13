//
//  ViewController.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-06.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NumberOfPlayersVCProtocol {


    @IBOutlet weak var tableView: UITableView!
    
    var results: [Result] = []
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let fakeResult = Result()
        fakeResult.setScore(winner: "Steve", winnerScore: 5, loser: "Jeff", loserScore: 4)
        self.results.append(fakeResult)
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? NumberOfPlayersVC {
            vc.delegate = self
        }
    
    }
    
    func didFinishGame(_ users: [User], results: [Result]){
        self.users.append(contentsOf: users)
        self.results.append(contentsOf: results)
        self.tableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.results.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "Cell")!
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let score =  self.results[indexPath.row].score
        let date =  self.results[indexPath.row].date
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.text = score
        cell.detailTextLabel?.text = "at \(date)"
        
    }
    
}

