//
//  InfoViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/16/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
 
    //Title of cell selected on DetailViewController
    var unitName: String!
    
    //TODO delete this var, unused, ??problem??: still required to be kept here by other xcode file
    var detailItem: NSDate?
    
    //Outlet to label at top of InfoViewController in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
    
    //Outlet to TableView in InfoViewController in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    
    var engineers: [String] = ["T1 Engineer","T2 Engineering Station: The Kennel", "T2 Engineer","T2 Field Engineer: Sparky","T3 Engineering Station: The Kennel", "T3 Engineer"]
    
    //TODO possibly delete
    func configureView() {
        // Update the user interface for the detail item.
        
    }
    
    //Runs when view has loaded, use as main set-up function
    override func viewDidLoad() {
        //Call super
        super.viewDidLoad()
        
        //Set up TableView delegate and datasource as self
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        //TODO possibly delete
        configureView()
       
        //Label at top of InfoViewController in storyboard. name based on selected cell title from DetailViewController
        topLabel.title = unitName
    }
    
  
    
    //Runs when a memory warning has been received
    override func didReceiveMemoryWarning() {
        
        //Call super
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - TableView
    
    //Returns the height of the section
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }
    
    
    //Returns the number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        
        //DF return 1
        return 1
    }
    
    
    //Returns number of rows in a given section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        /*CURRENTLY NOT PASSED
         
         if dataPassed == "Engineer"
        {
            return engineers.count
        }*/
        return 0
    }
    
    //Creates table cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = engineers[indexPath.row]
        return cell
    }
    
    
    
    
    
    
    
}

