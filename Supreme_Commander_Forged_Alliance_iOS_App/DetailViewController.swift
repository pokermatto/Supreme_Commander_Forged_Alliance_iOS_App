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
        if nameOfUnit != nil
        {
            switch nameOfUnit
            {
                
            case "Command":
                unitSectionNames = ["Armored Command Units"]
                let command1: [String] =  ["ACU", "T3 Support ACU"]
                unitSectionCells = [command1]
                
            case "Engineer":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let engineer1: [String] =  ["T1 Engineer"]
                let engineer2: [String] =  ["T2 Engineering Station: The Kennel", "T2 Engineer", "T2 Field Engineer: Sparky"]
                let engineer3: [String] = ["T3 Engineering Station: The Kennel", "T3 Engineer"]
                unitSectionCells = [engineer1, engineer2, engineer3]
            case "Factory":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let factory1: [String] =  ["T1 Land Factory", "T1 Air Factory", "T1 Naval Factory"]
                let factory2: [String] =  ["T2 Land Factory HQ", "T2 Air Factory HQ", "T2 Naval Factory HQ", "T2 Land Factory", "T2 Air Factory", "T2 Naval Factory"]
                let factory3: [String] = ["T3 Land Factory HQ", "T3 Air Factory HQ", "T3 Naval Factory HQ","T3 Quantum Gateway: QGW R-32", "T3 Land Factory", "T3 Air Factory", "T3 Naval Factory"]
                unitSectionCells = [factory1, factory2, factory3]
            case "Economy":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let economy1: [String] =  ["T1 Power Generator", "T1 Hydrocarbon Power Plant: HCPP - X1000", "T1 Mass Extractor: Mass Pump 1", "T1 Energy Storage", "T1 Mass Storage"]
                let economy2: [String] =  ["T2 Mass Fabricator", "T2 Power Generator: EG-200 Fusion Reactor", "T2 Mass Extractor: Mass Pump 2"]
                let economy3: [String] = ["T3 Power Generator: EG-900 Fusion Reactor", "T3 Mass Extractor: Mass Pump 3", "T3 Mass Fabricator"]
                unitSectionCells = [economy1, economy2, economy3]
            case "Weapon":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let weapon1: [String] =  ["T1 Point Defense: DM1 Plasma Cannon", "T1 Anti-Air Turret: DA1 Railgun", "T1 Torpedo Launcher: DN1"]
                let weapon2: [String] =  ["T2 Tactical Missile Launcher: Aloha", "T2 Anti-Air Flak Artillery: Air Cleaner", "T2 Torpedo Launcher: Tsunami", "T2 Point Defense: Triad", "T2 Artillery Installation: Klink Hammer"]
                let weapon3: [String] = ["T3 Heavy Artillery Installation: Duke", "T3 Anti-Air SAM Launcher: Flayer", "T3 Strategic Missile Launcher: Stonager", "T3 Heavy Point Defense: Ravager"]
                let weapon4: [String] = ["Experimental Artillery: Mavor"]
                unitSectionCells = [weapon1, weapon2, weapon3, weapon4]
            case "Defense":
                unitSectionNames = ["Tech 2", "Tech 3"]
                let defense2: [String] =  ["T2 Tactical Missile Defense: Buzzkill", "T2 Shield Generator: SD-Pulse", "T2 Stealth Field Generator: Scattershield"]
                let defense3: [String] = ["T3 Heavy Shield Generator: HSD Pulse", "T3 Strategic Missile Defense: Nuke Eliminator"]
                unitSectionCells = [defense2, defense3]
            case "Sensor":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let sensor1: [String] =  ["T1 Radar System: SA1-1000", "T1 Sonar System: SP1-1000"]
                let sensor2: [String] =  ["T2 Radar System: SA2-2000", "T2 Sonar System: SP2-2000"]
                let sensor3: [String] = ["T3 Omni Sensor Array: SA3-Omni", "T3 Sonar Platform: SP3-3000"]
                unitSectionCells = [sensor1, sensor2, sensor3]
            case "Aircraft":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let air1: [String] =  ["T1 Air Scout: Hummingbird", "T1 Interceptor: Cyclone", "T1 Attack Bomber: Scorcher", "T1 Light Air Transport: C-6 Courier"]
                let air2: [String] =  ["T2 Fighter/Bomber: Janus", "T2 Air Transport: C14 Star Lifter", "T2 Gunship: Stinger" , "T2 Torpedo Bomber: Stork"]
                let air3: [String] = ["T3 Spy Plane: SR90 Blackbird", "T3 Air-Superiority Fighter: Wasp", "T3 Strategic Bomber: Ambassador", "T3 Heavy Gunship: Broadship", "T3 Heavy Air Transport: Continental"]
                //TODO confirm that this unit actually is an experimental
                let air4: [String] = ["Defense Satellite"]
                unitSectionCells = [air1, air2, air3, air4]
            case "Vehicle":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let vehicle1: [String] =  ["T1 Land Scout: Snoop", "T1 Mobile Light Artillery: Lobo", "T1 Mobile Anti-Air Gun: Archer", "T1 Light Assault Bot: Mech Marine", "T1 Medium Tank: MA12 Striker"]
                let vehicle2: [String] =  ["T2 Gating Bot: Mongoose", "T2 Mobile Missile Launcher: Flapjack", "T2 Heavy Tank: Pillar", "T2 Amphibious Tank: Riptide", "T2 Mobile AA Flak Artillery: Sky Boxer", "T2 Mobile Shield Generator: Parashield"]
                let vehicle3: [String] = ["T3 Heavy Assault Bot: Titan", "T3 Mobile Heavy Artillery: Demolisher", "T3 Armored Assault Bot: Percival", "T3 Mobile Missile Platform: Spearhead"]
                let vehicle4: [String] = ["Experimental Mobile Factory: Fatboy"]
                unitSectionCells = [vehicle1, vehicle2, vehicle3, vehicle4]
            case "Ship":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let ship1: [String] =  ["T1 Frigate: Thunderhead Class", "T1 Attack Submarine: Tigershark"]
                let ship2: [String] =  ["T2 Destroyer: Valiant Class", "T2 Cruiser: Governor Class", "T2 Torpedo Boat: Cooper", "T2 Shield Boat:  Bulwark"]
                let ship3: [String] = ["T3 Battleship: Summit Class", "T3 Strategic Missile Submarine: Ace", "T3 Battlecruiser: Neptune Class"]
                let ship4: [String] = ["Experimental Aircraft Carrier: Atlantis"]
                unitSectionCells = [ship1, ship2, ship3, ship4]
            case "Support":
                unitSectionNames = ["Tech 1", "Tech 2", "Experimental"]
                let support1: [String] =  ["T1 Wall Section: Calcicrete"]
                let support2: [String] =  ["T2 Air Staging Facility: Refuel & Repair"]
                let support4: [String] = ["Experimental Satellite System: Novax Center"]
                unitSectionCells = [support1, support2, support4]

            default:
                print("Warning: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
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

