//
//  ChatViewController.swift
//  TextronConnect 3
//
//  Created by Andre Unsal on 7/17/18.
//  Copyright © 2018 Textron. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class ChatViewController: UIViewController {
    
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBOutlet weak var messageTable: UITableView!
    
    @IBAction func sendWasPressed(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        self.hideKeyboardWhenTappedAround()
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
