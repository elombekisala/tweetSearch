//
//  ViewController.swift
//  TweetSearch
//
//  Created by Nsonsa Elombe Kisala Jr. on 3/30/19.
//  Copyright © 2019 Nsonsa Kisala Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var username: String = ""
    var words: String = ""
    var tweetSearchURL: String = ""

    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var wordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func searchBtnPressed(_ sender: Any) {
        
        username = (usernameTextfield.text?.lowercased())!
        words = (wordTextfield.text?.lowercased())!
        
        tweetSearchURL = "https://www.twitter.com/search?q=\(words)%20from:\(username)"
        
        if let url = URL(string: tweetSearchURL) {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
}

