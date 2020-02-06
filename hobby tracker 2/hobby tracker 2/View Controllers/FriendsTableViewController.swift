//
//  FriendsTableViewController.swift
//  hobby tracker 2
//
//  Created by Waseem Idelbi on 2/5/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController, UITableViewDelegate {

//MARK: --  IBOutlets  --
    @IBOutlet var tableView: UITableView!
    
//MARK: -- Properties --
    var friends: [Friend] = [Friend(name: "ya boy", hometown: "ya boy town", hobbies: ["ya boy hobbie 1", "hobbie2", "Mr. Number 3rd hobbie"])]
//MARK: -- -- -- -- --
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    

}


extension FriendsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else {return UITableViewCell()}
        
        let friend = friends[indexPath.row]
        cell.friend = friend
        return cell
    }
}


