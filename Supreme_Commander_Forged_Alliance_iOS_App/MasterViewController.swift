//
//  MasterViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()
    
    var selectedLabel:String?

    
    
    /*var oldData = [ "Building - Factory": ["T1 Land Factory", "T1 Air Factory", "T1 Naval Factory"],"Engineer": ["T1 Engineer","T2 Engineering Station: The Kennel", "T2 Engineer","T2 Field Engineer: Sparky","T3 Engineering Station: The Kennel", "T3 Engineer"], "Command": ["Armored Command Unit", "T3 Support Armored Command Unit"]]
    
    var mainPageNames = ["Support": ["Support"],"Mobile": ["Aircraft", "Vehicle", "Ship"],"Buildings": ["Factory", "Economy", "Weapon", "Defense", "Sensor"],"Command & Engineer": ["Command", "Engineer"]]*/
    
    
    
    var sectionTitles = ["Command & Engineer", "Buildings", "Mobile Units", "Support Units"]
    var commandAndEngineerUnits : [String] = ["Command", "Engineer"]
    var buildingUnits : [String] = ["Factory", "Economy", "Weapon", "Defense", "Sensor"]
    var mobileUnits : [String] = ["Aircraft", "Vehicle", "Ship"]
    var supportUnits : [String] = ["Support"]
    var unitCategories: [[String]] = []
    
    lazy var searchBar:UISearchBar = UISearchBar()

    
    
    struct sectionDataObject {
        
        var sectionName : String!
        var sectionCategories : [String]!
    }
    
    var sectionArray = [sectionDataObject]()
    

    
    //Returns name of the section
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionArray[section].sectionName
        // "abc"
    }
    
    //Returns the height of the section
    public override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }
    

    
    
    
    

     //Runs when screen loads, use as main setup function
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        
        searchBar.searchBarStyle = UISearchBarStyle.prominent
        searchBar.placeholder = " Search UEF..."
        searchBar.sizeToFit()
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self as? UISearchBarDelegate
        navigationItem.titleView = searchBar
        
        
        
        
        unitCategories = [commandAndEngineerUnits, buildingUnits, mobileUnits, supportUnits]
        
        /*DF Do any additional setup after loading the view, typically from a nib.
         navigationItem.leftBarButtonItem = editButtonItem
         let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
         navigationItem.rightBarButtonItem = addButton*/
        
        //Set up split view controller
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        /*Add section data to the section array
        for (key, value) in mainPageNames
        {
            
        }*/
        
        let numberOfSections = sectionTitles.count
        for index in 0..<numberOfSections {
            sectionArray.append(sectionDataObject(sectionName: sectionTitles[index], sectionCategories: unitCategories[index]))
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }
    
    /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let currentCell = tableView.cellForRow(at: indexPath)!
        selectedLabel = currentCell.textLabel!.text
        
    }*/

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
     DF
     func insertNewObject(_ sender: Any) {
        objects.insert(NSDate(), at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }*/

    // MARK: - Segues
    //Transitions to Detail View on UITableViewCell Click
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if tableView.indexPathForSelectedRow != nil
            {
                
                let currentCell = tableView.cellForRow(at: tableView.indexPathForSelectedRow!)!
                selectedLabel = currentCell.textLabel!.text
                //let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                //controller.detailItem
                controller.dataPassed = selectedLabel
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    //Returns the number of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        //DF return 1
        return sectionArray.count
    }
    
    
    func searchBar(searchBar: UISearchBar, textDidChange textSearched: String)
    {
        
    }

    //Returns number of rows in a given section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //DF return objects.count
        return sectionArray[section].sectionCategories.count
    }

    //Creates main page cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        //DF let object = objects[indexPath.row] as! NSDate
        //DF cell.textLabel!.text = object.description
        cell.textLabel?.text = sectionArray[indexPath.section].sectionCategories[indexPath.row]
        return cell
    }

    
    /*
     DF
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }*/


}

