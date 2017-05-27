//
//  WeaponsViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/26/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

import UIKit

class WeaponsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    //Title of cell selected on InfoViewController
    var vweName: String!
    
    //Unit Name
    var unitName: String!
    
    //Faction Name
    var factionName: String! = "UEF"
    
 
    //Outlet to label at top of DetailViewController in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
    
    //Outlet to TableView in DetailViewController in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    
    
    
    //Category Data filled in by setTableDataForSelectedUnit(_ nameOfUnit: String!) method
    var unitSectionNames: [String] = []
    var unitSectionCells: [[String]] = []
    
    
    //Set variables unitSectionNames and unitSectionCells according to the passed unit name
    func setTableDataForSelectedUnit()
    {
        
        if factionName == "UEF"
        {
            if vweName == "Veterancy"
            {
                
                switch unitName
                {
                    case "ACU":
                        unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                        
                        let l1: [String] =  ["Kills Required: 20", "New HP: 13,200 (+1,200)", "New Regen Rate: 13 HP/s (+3 HP/s)"]
                        let l2: [String] =  ["Kills Required: 40", "New HP: 14,400 (+2,400)", "New Regen Rate: 16 HP/s (+6 HP/s)"]
                        let l3: [String] =  ["Kills Required: 65", "New HP: 15,600 (+3,600)", "New Regen Rate: 19 HP/s (+9 HP/s)"]
                        let l4: [String] =  ["Kills Required: 90", "New HP: 16,800 (+4,800)", "New Regen Rate: 22 HP/s (+12 HP/s)"]
                        let l5: [String] =  ["Kills Required: 120", "New HP: 18,000 (+6,000)", "New Regen Rate: 25 HP/s (+15 HP/s)"]
                       
                        unitSectionCells = [l1, l2, l3, l4, l5]
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            
            if vweName == "Weapons"
            {
            }
            
            if vweName == "Enhancements"
            {
            }
            
            
        }
        
        if factionName == "Aeon"
        {
            if vweName == "Veterancy"
            {
            }
            
            if vweName == "Weapons"
            {
            }
            
            if vweName == "Enhancements"
            {
            }
        }
        
        if factionName == "Cybran"
        {
            if vweName == "Veterancy"
            {
            }
            
            if vweName == "Weapons"
            {
            }
            
            if vweName == "Enhancements"
            {
            }
        }
        
        if factionName == "Seraphim"
        {
            if vweName == "Veterancy"
            {
            }
            
            if vweName == "Weapons"
            {
            }
            
            if vweName == "Enhancements"
            {
            }
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
        setTableDataForSelectedUnit()
        
        //TODO possibly delete
        configureView()
        
        //Label at top of WeaponsViewController in storyboard
        topLabel.title = unitName + ": " + vweName
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
