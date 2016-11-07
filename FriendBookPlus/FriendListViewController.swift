//
//  ViewController.swift
//  FriendBookPlus
//
//  Created by Jeff Li on 11/6/16.
//  Copyright © 2016 Jeff Li. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createFriends()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func createFriends() {
        let jason = Friend()
        jason.name = "Jason"
        jason.phone = "703-455-9876"
        jason.birthday = "January 4th"
        jason.pic = UIImage.init(named: "Green_Lantern_(Ryan_Reynolds)")!

        self.friends.append(jason)
        
        let eugene = Friend()
        eugene.name = "Eugene"
        eugene.phone = "703-425-0076"
        eugene.birthday = "September 11th"
        eugene.pic = UIImage.init(named: "4693444-6164752601-ben_a")!
        self.friends.append(eugene)
        
        let george = Friend()
        george.name = "George"
        george.phone = "703-423-1176"
        george.birthday = "March 4th"
        george.pic = UIImage.init(named: "lead_960")!
        self.friends.append(george)
        
        let mike = Friend()
        mike.name = "Mike"
        mike.phone = "703-625-8016"
        mike.birthday = "February 9th"
        mike.pic = UIImage.init(named: "The-Joker-Suicide-Squad-Batman-Comic")!
        self.friends.append(mike)


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        cell.textLabel!.text = friend.name
        return cell

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        self.performSegue(withIdentifier: "detailSegue", sender: friend)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! FriendDetailViewController
        detailVC.friend = sender as! Friend
    }
}

