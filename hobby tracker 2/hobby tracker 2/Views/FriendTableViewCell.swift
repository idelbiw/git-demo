//
//  FriendTableViewCell.swift
//  hobby tracker 2
//
//  Created by Waseem Idelbi on 2/5/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

//MARK: --  IBOutlets  --
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var hometownLabel: UILabel!
    @IBOutlet var numberOfHobbiesLabel: UILabel!
    
    var friend: Friend? {
        didSet {
            updateViews()
        }
    }

    func updateViews() {
        guard let friend = friend else {return}
        
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        numberOfHobbiesLabel.text = "\(friend.hobbies.count) hobbies"
    }
}
