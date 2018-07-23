//
//  EventsViewController.swift
//  TextronConnect 3
//
//  Created by Andre Unsal on 7/18/18.
//  Copyright © 2018 Textron. All rights reserved.
//

import Foundation
import UIKit

class EventsViewController: UIViewController {
    
    
    
    @IBOutlet weak var eventsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
