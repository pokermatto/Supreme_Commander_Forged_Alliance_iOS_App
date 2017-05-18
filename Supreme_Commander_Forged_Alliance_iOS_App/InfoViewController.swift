//
//  InfoViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/16/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
 
    // MARK: - IBOutlets
    //Outlet to label at top of Table 3 Scene in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
    
    //Outlet to UIImageView in Table 3 Scene in Storyboard
    @IBOutlet weak var imageView: UIImageView!
    
    //Outlet to TableView in Table 3 Scene in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    
    // MARK: - Variables
    //Title of cell selected on DetailViewController
    var unitName: String!
    
    //Category Data filled in by setTableDataForSelectedUnit(_ nameOfUnit: String!) method
    var unitSectionNames: [String] = []
    var unitSectionCells: [[String]] = []
    

    
    //Set variables unitSectionNames and unitSectionCells according to the passed unit name
    func setTableDataForSelectedUnit(_ nameOfUnit: String!)
    {
        if unitName != nil
        {
            switch nameOfUnit
            {
                
            //COMMAND UNITS
            case "ACU":
                
                let unitImage : UIImage = UIImage(named:"uel0001_icon")!
                imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage"]
                let bluePrintID = ["UEL0001"]
                let health: [String] =  ["HP: 12,000", "Regen Rate: 10 HP/s", "Armor Type: Commander"]
                let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                let economy: [String] =  ["Mass: 18,000", "Mass Storage: 650", "Energy: 5,000,000", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
                let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 26", "Water Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 135 HP", "Mass: 46"]
                //TODO ADD VWE
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                
            case "T3 Support ACU":
                
                let unitImage : UIImage = UIImage(named:"uel0301_icon")!
                imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage"]
                let bluePrintID = ["UEL0301"]
                let health: [String] =  ["HP: 16,000", "Regen Rate: 20 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                let economy: [String] =  ["Mass: 2,100", "Mass Storage: 275", "Energy: 25,200", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
                let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 16", "Water Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 2.2", "Turn Rate: 150"]
                let wreckage: [String] =  ["Health: 14,400 HP", "Mass: 1890"]
                //TODO ADD VWE
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                
                
                
            //Engineering Units
            case "T1 Engineer":
                
                let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage"]
                let bluePrintID = ["UEL0105"]
                let health: [String] =  ["HP: 150", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious", "Engineering Suite"]
                let economy: [String] =  ["Mass: 53", "Mass Storage: 10", "Energy: 260", "Build Time: 260", "Build Rate: 5", "Build Radius: 5"]
                let intel: [String] =  ["Vision Radius: 18"]
                let physics: [String] =  ["Max Speed: 1.9", "Turn Rate: 120"]
                let wreckage: [String] =  ["Health: 135 HP", "Mass: 46"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Engineering Station: The Kennel":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["XEB0104"]
                let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Engineering Suite", "Upgradeable"]
                let economy: [String] =  ["Mass: 550", "Energy: 2750", "Build Time: 1,100", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 15"]
                let wreckage: [String] =  ["Health: 900 HP", "Mass: 495"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                
                
                
            //Default case
            default:
                print("Warning InfoView: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
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
        setTableDataForSelectedUnit(unitName)
        
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
    
    //Creates table cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create cell based on prototype
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        
        //Set new cell's label based on row/section location (i.e. indexPath)
        cell.textLabel?.text = unitSectionCells[indexPath.section][indexPath.row]
        
        
        //Return the newly-created cell
        return cell
    }
    
    
    
    
    
    
    
}

