//
//  DetailViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    //, UITableViewDataSource, UITableViewDelegate
    var dataPassed: String!
    
    
    var detailItem: NSDate?
    @IBOutlet weak var topLabel: UINavigationItem!
   
    @IBOutlet weak var detailTableView: UITableView!

    
    
    var engineers: [String] = ["T1 Engineer","T2 Engineering Station: The Kennel", "T2 Engineer","T2 Field Engineer: Sparky","T3 Engineering Station: The Kennel", "T3 Engineer"]

    func configureView() {
        // Update the user interface for the detail item.
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        configureView()
        
        topLabel.title = dataPassed
        
        detailTableView.beginUpdates()
        if dataPassed == "Engineer"
        {
            print("Here")
            detailTableView.insertRows(at: [IndexPath(row: engineers.count-1, section: 0)], with: .automatic)
          
        }
        
        detailTableView.endUpdates()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    //Returns name of the section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "SectionName"
        // "abc"
    }
    
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
        
        //DF return objects.count
        return engineers.count
    }
    
    //Creates main page cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //DF let object = objects[indexPath.row] as! NSDate
        //DF cell.textLabel!.text = object.description
        cell.textLabel?.text = engineers[indexPath.row]
        return cell
    }
    

    
    
    


}

