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
    
    
    
    
    var mainPageNames = [ "Friends": ["My Friends", "Add Friends"], "My Stats": ["Game Stats", "Unit Stats"]]
    
    struct sectionDataObject {
        
        var sectionName : String!
        var sectionCategories : [String]!
    }
    
    var sectionArray = [sectionDataObject]()
    

    
    //Returns name of the section
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionArray[section].sectionName
    }
    
    
    

     //Runs when screen loads, use as main setup function
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        /*DF Do any additional setup after loading the view, typically from a nib.
         navigationItem.leftBarButtonItem = editButtonItem
         let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
         navigationItem.rightBarButtonItem = addButton*/
        
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
        
        for (key, value) in mainPageNames
        {
            //println("\(key) -> \(value)")
            sectionArray.append(sectionDataObject(sectionName: key, sectionCategories: value))
        }
        
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
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

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        //DEFAULT return 1
        return sectionArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //DEFAULT return objects.count
        return sectionArray[section].sectionCategories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        //DEFAULT let object = objects[indexPath.row] as! NSDate
        //DEFAULT cell.textLabel!.text = object.description
        cell.textLabel?.text = sectionArray[indexPath.section].sectionCategories[indexPath.row]
        return cell
    }

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
    }


}

