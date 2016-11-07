//
//  FriendDetailViewController.swift
//  FriendBookPlus
//
//  Created by Jeff Li on 11/6/16.
//  Copyright © 2016 Jeff Li. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    var friend = Friend()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = self.friend.name
        self.phoneLabel.text = self.friend.phone
        self.birthdayLabel.text = self.friend.birthday
    }

}
