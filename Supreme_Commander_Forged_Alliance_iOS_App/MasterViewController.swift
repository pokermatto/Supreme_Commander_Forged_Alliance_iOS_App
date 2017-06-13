//
//  MasterViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit
import Floaty


var floatyClicked: Bool? = false
var movingToNextView : Bool? = false


class MasterViewController: UITableViewController {

    //The detail view controller
    var detailViewController: DetailViewController? = nil
    
    //Selected cell's label, used to pass to detail view
    var selectedLabel:String?
    
    
    //Current faction
    var faction: String? = "UEF"
    
    //Faction Colors
    var uefColor: UIColor? = UIColor(red: 0/255, green: 2/255, blue: 175/255, alpha: 1.0)
    var cybranColor: UIColor? = UIColor(red: 168/255, green: 14/255, blue: 0/255, alpha: 1.0)
    var seraphimColor: UIColor? = UIColor(red: 255/255, green: 215/255, blue: 125/255, alpha: 1.0)
    var aeonColor: UIColor? = UIColor(red: 5/255, green: 150/255, blue: 0/255, alpha: 1.0)
    
    
    //Current faction color for table cells
    var factionColor: UIColor?
    
    
    
    
    
    
    //Nav Item
    @IBOutlet weak var navItem: UINavigationItem!
    
    
    
    
    //Titles of sections for the TableView
    var sectionTitles = ["Command & Engineer", "Buildings", "Mobile Units", "Support Units"]
    
    //Titles of cells for each section in TableView COMMENT CODE: A
    var commandAndEngineerUnits : [String] = ["Command", "Engineer"]
    var buildingUnits : [String] = ["Factory", "Economy", "Weapon", "Defense", "Sensor"]
    var mobileUnits : [String] = ["Aircraft", "Vehicle", "Ship"]
    var supportUnits : [String] = ["Support"]
    
    //Array of the above arrays of cell names, initialized in viewDidLoad
    var unitCategories: [[String]] = []
    
    
    //Search bar, initialized in viewDidLoad
    // FR lazy var searchBar:UISearchBar = UISearchBar()

    
    //TODO Delete this
    @IBOutlet weak var footerView: UIView!
    
    
    //object that contains the sectionName from 'sectionTitles' array and the corresponding array of cell names from on of the four arrays initialized above (under COMMENT CODE: A)
    struct sectionDataObject {
        
        //Name of the section from 'sectionTitles' array
        var sectionName : String!
        //corresponding array of cell names from on of the four arrays initialized above (under COMMENT CODE: A)
        var sectionCategories : [String]!
    }
    
    //The array of the sectionDataObject's , this array contains all data TableView sections and cells in order
    var sectionArray = [sectionDataObject]()
    


 
    

    //Runs when view has loaded, use as main set-up function
    override func viewDidLoad()
    {
        //Call super
        super.viewDidLoad()
        
        
        
        
        
        /* FR Search Bar setup
        searchBar.searchBarStyle = UISearchBarStyle.prominent
        searchBar.placeholder = " Search UEF..."
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self as? UISearchBarDelegate
        navigationItem.titleView = searchBar
         */
        
        //Default to UEF blue color
        factionColor = uefColor
        
        //Set Nav bar title
        self.navItem.title = self.faction
        
        
        Floaty.global.button.size = 100
        
        Floaty.global.button.tintColor = nil
        
        //Set UEF as default starting image
        Floaty.global.button.buttonImage = UIImage(named: "uefCircle.png")!
        
    
        
        //Set Seraphim item for Floaty
        Floaty.global.button.addItem("Seraphim",icon: UIImage(named: "seraphimCircle.png")! , handler: {item in
            
            //Set main button image
            item.actionButton?.buttonImage = UIImage(named: "seraphimCircle.png")!
            
            //Set faction for view
            self.goToRootViewAndSetFaction(faction: "Seraphim")
        })
        
        //Set UEF item for Floaty
        Floaty.global.button.addItem("UEF",icon: UIImage(named: "uefCircle.png")! , handler: {item in
            
            //Set main button image
            item.actionButton?.buttonImage = UIImage(named: "uefCircle.png")!
            
            //Set faction for view
            self.goToRootViewAndSetFaction(faction: "UEF")
        })
        
        //Set Cybran item for Floaty
        Floaty.global.button.addItem("Cybran",icon: UIImage(named: "cybranCircle.png")! , handler: {item in
            
            //Set main button image
            item.actionButton?.buttonImage = UIImage(named: "cybranCircle.png")!
            
            //Set faction for view
            self.goToRootViewAndSetFaction(faction: "Cybran")
        })
        
        //Set Aeon item for Floaty
        Floaty.global.button.addItem("Aeon",icon: UIImage(named: "aeonCircle.png")! , handler: {item in
            
            //Set main button image
            item.actionButton?.buttonImage = UIImage(named: "aeonCircle.png")!
            
            //Set faction for view
            self.goToRootViewAndSetFaction(faction: "Aeon")
        })
        
        
        
        
        //All button items
        let items = Floaty.global.button.items
        
        //index for loop
        var index = 0
        
        //loop through button items
        while (index < items.count)
        {
            
            //Button Item
            let item = items[index]
            
            //Increase Size of button item
            item.size += 10
        
            //Increase image size
            item.imageSize = CGSize(width: item.size + 10, height: item.size + 10)
            
        
            
            //Make button color transparent
            item.buttonColor = UIColor.init(red: 1, green: 1, blue: 1, alpha: 0)
            
            //TODO SHOULD Make button tint color transparent
            item.tintColor =  nil
            
          
            

            //Increment index
            index += 1
        }
        
        
        //Show Floaty
        Floaty.global.show()
      
        
        
        //Set up splitViewController
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        
        //Initialize unitCategories
        unitCategories = [commandAndEngineerUnits, buildingUnits, mobileUnits, supportUnits]
        
        
        //Number of sections in TableView based on number of section titles
        let numberOfSections = sectionTitles.count
        
        
        //Loop to append sectionName/cellNameArray pairs to sectionArray object
        for index in 0..<numberOfSections {
            sectionArray.append(sectionDataObject(sectionName: sectionTitles[index], sectionCategories: unitCategories[index]))
        }
        
    }

    
    
    
    
    
    
    
    //Function goes to root view and customizes it for passed faction
    func goToRootViewAndSetFaction(faction currentFaction: String)
    {
        
        //Set to false for running log
        floatyClicked = true
        
        //Print to console
        print("Selected: " + currentFaction)
        
        //Set the current faction
        self.faction = currentFaction
        
        //Pop back to root view controller
        self.navigationController!.popViewController(animated: true)
        self.navigationController!.popViewController(animated: true)
        self.navigationController!.popViewController(animated: true)
        
        //Set nav bar title to current faction
        self.navItem.title = currentFaction
        
        //Set current factionColor for table view cells
        switch currentFaction
        {
        case "Seraphim":
            self.factionColor = seraphimColor
        case "UEF":
            self.factionColor = uefColor
        case "Cybran":
            self.factionColor = cybranColor
        case "Aeon":
            self.factionColor = aeonColor
        default:
            print("Switch in goToRootViewAndSetFaction(faction currentFaction: String) got an incorrection faction: " + currentFaction)
        }
        
        //Reload table view cells to update cell color
        DispatchQueue.main.async{
            self.tableView.reloadData()
        }
        

    }
    
    
    
    
    
    //Runs when the view will appear
    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    

  

    //Runs when a memory warning has been received
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  

    // MARK: - Segues
    //Transitions to Detail View on UITableViewCell Click
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Check that seque is the one going to Nav2 in storyboard
        if segue.identifier == "showDetail" {
            
            //Set for running log
            movingToNextView = true
            
            //If a row was selected (the only case for transition at this time)
            if tableView.indexPathForSelectedRow != nil
            {
                
                //The user-selected cell
                let currentCell = tableView.cellForRow(at: tableView.indexPathForSelectedRow!)!
                
                //The text of the user-selected cell
                selectedLabel = currentCell.textLabel!.text
             
                //Storyboard Table2 DetailViewController
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
             
                //Pass the title of the user-selected cell to the detail view so it knows what to load in its table
                controller.nameOfSelectedUnitCategory = selectedLabel
                
                
                //Print for running log
                print("Selected: " + selectedLabel!)
                
                
                //Pass the faction name to the detail view
                controller.factionName = faction
                
                //Navigation backbutton
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
            //Set for running log
            movingToNextView = false
        }
    }

    
    
    
    // MARK: - Search Bar
    /*func searchBar(searchBar: UISearchBar, textDidChange textSearched: String)
     {
     
     }*/
    
    
    
    
    
    
    // MARK: - Table View

    
    
    
    //Returns the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        //Note: TableView's require at least on section to populate, though no section header is needed
        return sectionArray.count
    }
    
    
    

    //Returns number of rows in a given section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //The number of rows is the count of the corresponding section array initialized near the top
        return sectionArray[section].sectionCategories.count
    }

    
    
    //Creates and returns cell based on prototype
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Create cell based on prototype
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        //Set new cell's label based on row/section location (i.e. indexPath)
        cell.textLabel?.text = sectionArray[indexPath.section].sectionCategories[indexPath.row]
        
        cell.backgroundColor = factionColor
        
        //Return the newly-created cell
        return cell
    }
    
    
    
    
    //Returns name of the section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //Return section name based on section number (called 'section')
        return sectionArray[section].sectionName
    }
    
    
    
    
    //Returns the height of the section
    public override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        //Return preferred height value for all sections
        return 61.0
    }
    
 


}

