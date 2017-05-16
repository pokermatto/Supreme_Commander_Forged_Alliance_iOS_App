//
//  DetailViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    //Title of cell selected on MasterViewController
    var nameOfSelectedUnitCategory: String!
    
    //TODO delete this var, unused, problem: still required to be kept here by other xcode file
    var detailItem: NSDate?
    
    //Outlet to label at top of DetailViewController in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
   
    //Outlet to TableView in DetailViewController in storyboard
    @IBOutlet weak var detailTableView: UITableView!

    
    //Arrays of cell titles for the detailTableView based on cells in MasterViewController
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
        
        //Label at top of DetailViewController in storyboard. name based on selected cell title from MasterViewController
        topLabel.title = nameOfSelectedUnitCategory
    }
    
    //Transitions to Detail View on UITableViewCell Click
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //If the segue is the one going from Table2 to Nav3 in storyboard
        if segue.identifier == "showDetail2" {
           
            //If a row was selected (the only case for transition on this segue at this time)
            if detailTableView.indexPathForSelectedRow != nil
            {
                
                //The user-selected cell
                let currentCell = detailTableView.cellForRow(at: detailTableView.indexPathForSelectedRow!)!
                
                //The text of the user-selected cell
                let selectedLabel = currentCell.textLabel!.text
                
                //Storyboard Table3 InfoViewController
                let controller = (segue.destination as! UINavigationController).topViewController as! InfoViewController
                
                //Pass the title of the user-selected cell to the info view so it knows what unit info to load in its view and hence, table
                controller.unitName = selectedLabel
                
                //Navigation backbutton
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    

    //Runs when a memory warning has been received
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    // MARK: - TableView
    //Returns the height of the section
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        //Return preferred height value for all sections
        return 61.0
    }
    
    
    //Returns the number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        
        //TODO will be changed to correspond to actual needed number of sections
        return 1
    }
    
    
    //Returns number of rows in a given section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // Returns number of rows in the section based on the section number and count of the array for the unit category currently shown
        if nameOfSelectedUnitCategory == "Engineer"
        {
             return engineers.count
        }
        
        //Return zero for categories for which data has not been entered
        return 0
    }
    
    //Creates TableView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create cell based on prototype
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        
        //Set new cell's label based on row/section location (i.e. indexPath) and name of selected cell from MasterViewController (i.e. what category of unit we are in)
        if nameOfSelectedUnitCategory == "Engineer"
        {
            cell.textLabel?.text = engineers[indexPath.row]
        }
        else
        {
            cell.textLabel?.text = "ERROR: NO CATEGORY FOUND"
        }
        
        //Return the newly-created cell
        return cell
    }
    

    
    
    


}

