//
//  ViewController.swift
//  PingPongChallenger
//
//  Created by Elder-label on 2019-06-06.
//  Copyright © 2019 Create Music Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var results: [String] = []
    var users: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func didFinishGame(_ winners: [String], losers: [String]){
        
        var newUsers: [User] = []
        winners.forEach({ (name) in
            if (self.users.contains(where: { (user) -> Bool in
                return user.name == name
            })) {
                let user = User()
                user.name = name
                newUsers.append(user)
            }
        })
        
        self.users = users.map({
            if winners.contains($0.name) {
                $0.didWin()
            }
            if losers.contains($0.name) {
                $0.didLoose()
            }
            return $0
        })
        
        self.results.append("\(winners.toString()) won the match against \(losers.toString())")
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
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.text = self.results[indexPath.row]
        cell.detailTextLabel?.text = "at \(Date().beauty())"
        
    }
    
}

