//
//  AddFriendViewController.swift
//  hobby tracker 2
//
//  Created by Waseem Idelbi on 2/5/20.
//  Copyright © 2020 Waseem Idelbi. All rights reserved.
//

import UIKit

protocol AddFriendDelegate {
    func friendWasCreated(friend: Friend)
}

class AddFriendViewController: UIViewController {
    
//MARK: -- IBOutlets and IBActions --
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var hometownTextField: UITextField!
    @IBOutlet var hobbie1TextField: UITextField!
    @IBOutlet var hobbie2TextField: UITextField!
    @IBOutlet var hobbie3TextField: UITextField!
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text,
            let hometown = hometownTextField.text,
            !name.isEmpty,
            !hometown.isEmpty else {return}
        
        var friend = Friend(name: name, hometown: hometown, hobbies: [])
        
        if let hobbie1 = hobbie1TextField.text,
            !hobbie1.isEmpty {
            friend.hobbies.append(hobbie1)
        }
        if let hobbie2 = hobbie2TextField.text,
            !hobbie2.isEmpty {
            friend.hobbies.append(hobbie2)
        }
        if let hobbie3 = hobbie3TextField.text,
            !hobbie3.isEmpty {
            friend.hobbies.append(hobbie3)
        }
        
        
        delegate?.friendWasCreated(friend: friend)
        self.dismiss(animated: true)
        
}
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
//MARK: -- Private Properties --
    var delegate: AddFriendDelegate?
    
}
