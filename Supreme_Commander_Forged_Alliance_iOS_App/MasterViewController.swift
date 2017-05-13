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
    
    
    
    
    var mainPageNames = [ "Command Units": ["ACU", "Support ACU"], "Engineers": ["Engineer T1", "Engineer T2", "Engineer T3"]]
    
    struct sectionDataObject {
        
        var sectionName : String!
        var sectionCategories : [String]!
    }
    
    var sectionArray = [sectionDataObject]()
    

    
    //Returns name of the section
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionArray[section].sectionName
        // "abc"
    }
    
    //Returns the height of the section
    public override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        
        let header = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell1")!
    
        let sectionLabel: UILabel? = nil
        sectionLabel?.text = "Section Label"
        
        //TODO finish this method
        //header.set
        //header._lblGroupName.text = ""
        //header._btnExpand.addTarget(self, action: "hideSection:", forControlEvents: .TouchUpInside)
            
        //header._lblTotalCount.text = ""
        return header.contentView
    }
    
    
    
    
    

     //Runs when screen loads, use as main setup function
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
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
        
        //Add section data to the section array
        for (key, value) in mainPageNames
        {
            sectionArray.append(sectionDataObject(sectionName: key, sectionCategories: value))
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

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
                //let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                //controller.detailItem = indexPath
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

