//
//  FriendDetailViewController.swift
//  HobbyTracker
//
//  Created by Ben Gohlke on 7/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var hobbyListTextView: UITextView!
    
    var friend: Friend?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    private func updateViews() {
        guard let friend = self.friend else { return }
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        
        hobbyListTextView.text = friend.hobbies.joined (separator: ", ")
        }
    }

