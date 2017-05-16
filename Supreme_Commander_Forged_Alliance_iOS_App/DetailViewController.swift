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

    
    
    
    
    //Category Data filled in by setTableDataForSelectedUnit(_ nameOfUnit: String!) method
    var unitSectionNames: [String] = []
    var unitSectionCells: [[String]] = []
    
    
    //Set variables unitSectionNames and unitSectionCells according to the passed unit name
    func setTableDataForSelectedUnit(_ nameOfUnit: String!)
    {
        if nameOfUnit == "Engineer"
        {
            unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
            
            let engineer1: [String] =  ["T1 Engineer"]
            let engineer2: [String] =  ["T2 Engineering Station: The Kennel", "T2 Engineer", "T2 Field Engineer: Sparky"]
            let engineer3: [String] = ["T3 Engineering Station: The Kennel", "T3 Engineer"]
            
            
            unitSectionCells = [engineer1, engineer2, engineer3]
        }
    }
    
    
    
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
        
        //Set TableView data based on unit name
        setTableDataForSelectedUnit(nameOfSelectedUnitCategory)
        
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
        return 45.0
    }
    
    
    //Returns the number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        
        //Gets number of sections if it is greater than 0
        if(unitSectionNames.count > 0)
        {
            return unitSectionNames.count
        }
        
        //return 1 in case no data is passed (should not happen once all data has been filled in)
        return 1
    }
    
    //Returns name of the section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //Gets name of section (if none is present, this method uses default value at end of this method)
        if(unitSectionNames.count > 0)
        {
            return unitSectionNames[section]
        }
        
        
        //Default value if no unit category matches
        return "ERROR: NO SECTION NAME FOUND"
    }
    
    
    //Returns number of rows in a given section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // Return number of rows in the section based on the section number and count of the array for the unit category currently shown
        if !unitSectionCells.isEmpty
        {
            return unitSectionCells[section].count
        }
        else
        {
            return 0
        }
        
    }
    
    //Creates TableView cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create cell based on prototype
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        
        //Set new cell's label based on row/section location (i.e. indexPath)
        cell.textLabel?.text = unitSectionCells[indexPath.section][indexPath.row]
        
        
        //Return the newly-created cell
        return cell
    }
    

    
    
    


}

