//
//  DetailViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dataPassed: String!
    
    
    var detailItem: NSDate?
    @IBOutlet weak var topLabel: UINavigationItem!
   
    @IBOutlet weak var detailTableView: UITableView!


    func configureView() {
        // Update the user interface for the detail item.
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureView()
        
        topLabel.title = dataPassed
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //Returns name of the section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "SectionName"
        // "abc"
    }
    
    //Returns the height of the section
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }
    

    
    
    


}

