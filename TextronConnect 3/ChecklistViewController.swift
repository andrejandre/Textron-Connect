//
//  ChecklistViewController.swift
//  TextronConnect 3
//
//  Created by Andre Unsal on 7/17/18.
//  Copyright © 2018 Textron. All rights reserved.
//

import Foundation
import UIKit

class ChecklistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["Complete your ERIC Profile", "Learn about Textron", "Meet your manager", "Find housing", "Connect with other interns", "Complete I-9 forms", "Contact your Mentor", "Attend LDP Conference Call"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.font = UIFont(name: "Futura-Medium", size: 16)
        cell.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 0.5)
        
        cell.accessoryType = .checkmark
    
        
        return cell
    }
    

    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            
            self.list.remove(at: indexPath.row)
            
            myTableView.reloadData()
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
