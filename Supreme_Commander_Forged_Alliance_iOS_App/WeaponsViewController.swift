//
//  WeaponsViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/26/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

import Floaty

class WeaponsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    
    //Title of cell selected on InfoViewController
    var vweName: String!
    
    //Unit Name
    var unitName: String!
    
    //Faction Name
    var factionName: String! = "UEF"
    
    //Faction Colors
    var uefColor: UIColor? = UIColor(red: 0/255, green: 2/255, blue: 175/255, alpha: 1.0)
    var cybranColor: UIColor? = UIColor(red: 168/255, green: 14/255, blue: 0/255, alpha: 1.0)
    var seraphimColor: UIColor? = UIColor(red: 255/255, green: 215/255, blue: 125/255, alpha: 1.0)
    var aeonColor: UIColor? = UIColor(red: 5/255, green: 150/255, blue: 0/255, alpha: 1.0)
    
    //Current faction color for table cells
    var factionColor: UIColor?
    
    
 
    //Outlet to nav bar at top of WeaponsViewController in storyboard
    @IBOutlet weak var navItem: UINavigationItem!
  
    
    //Outlet to TableView in WeaponsViewController in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    
    
    
    //Category Data filled in by setTableDataForSelectedUnit(_ nameOfUnit: String!) method
    var unitSectionNames: [String] = []
    var unitSectionCells: [[String]] = []
    
    
    //Set variables unitSectionNames and unitSectionCells according to the passed unit name
    func setTableDataForSelectedUnit()
    {
        //FACTION UEF
        if factionName == "UEF"
        {
            //UEF Veterancy
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
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 25", "New HP: 17,600 (+1,600)", "New Regen Rate: 25 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 19,200 (+3,200)", "New Regen Rate: 30 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 20,800 (+4,800)", "New Regen Rate: 35 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 22,400 (+6,400)", "New Regen Rate: 40 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 24,000 (+8,000)", "New Regen Rate: 45 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Field Engineer: Sparky":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,144 (+104)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,248 (+208)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,352 (+312)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,456 (+416)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,560 (+520)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Point Defense: DM1 Plasma Cannon":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Anti-Air Turret: DA1 Railgun":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 4", "New HP: 880 (+80)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 960 (+160)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,040 (+240)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,120 (+320)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,200 (+400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T1 Torpedo Launcher: DN1":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Tactical Missile Launcher: Aloha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
               
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 8", "New HP: 2,849 (+259)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 3,108 (+518)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 3,367 (+777)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 3,626 (+1,036)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 3,885 (+1,295)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                  
                case "T2 Torpedo Launcher: Tsunami":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 7,040 (+640)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,680 (+1,280)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 8,320 (+1,920)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,960 (+2,560)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,600 (+3,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T2 Point Defense: Triad":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 2,475 (+225)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,700 (+450)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,925 (+675)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 3,150 (+900)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 3,375 (+1,125)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
             
                case "T2 Artillery Installation: Klink Hammer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 15", "New HP: 3,960 (+360)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 4,320 (+720)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 4,680 (+1,080)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 5,040 (+1,440)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 5,400 (+1,800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
         
                case "T3 Heavy Artillery Installation: Duke":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 16,500 (+1,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 18,000 (+3,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 19,500 (+4,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 21,000 (+6,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 22,500 (+7,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Anti-Air SAM Launcher: Flayer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 7,700 (+700)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 8,400 (+1,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,100 (+2,100)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 9,800 (+2,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 10,500 (+3,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    

                case "T3 Strategic Missile Launcher: Stonager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Point Defense: Ravager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 8,250 (+750)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 9,000 (+1,500)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,750 (+2,250)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 10,500 (+3,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 11,250 (+3,750)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Artillery: Mavor":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 50", "New HP: 8,800 (+800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 9,600 (+1,600)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 10,400 (+2,400)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 11,200 (+3,200)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 12,000 (+4,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Sonar Platform: SP3-3000":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,200 (+200)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 2,400 (+400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 2,600 (+600)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 2,800 (+800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,000 (+1,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Interceptor: Cyclone":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 324 (+29)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 354 (+59)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 383 (+88)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 413 (+118)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 442 (+147)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Bomber: Scorcher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 236 (+21)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 258 (+43)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 279 (+64)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 301 (+86)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 322 (+107)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Fighter/Bomber: Janus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,320 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,440 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,560 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,680 (+480)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,800 (+600)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Air Transport: C14 Star Lifter":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 1,842 (+167)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 2,010 (+335)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 2,177 (+502)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 2,345 (+670)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 2,512 (+837)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T2 Gunship: Stinger":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 968 (+88)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,056 (+176)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,144 (+264)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,232 (+352)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,320 (+440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T2 Torpedo Bomber: Stork":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 946 (+86)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 1,032 (+172)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 1,118 (+258)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,204 (+344)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,290 (+430)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Air-Superiority Fighter: Wasp":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 1,980 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,160 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,340 (+540)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,520 (+720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 2,700 (+900)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Bomber: Ambassador":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T3 Heavy Gunship: Broadship":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 6,600 (+600)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,200 (+1,200)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 7,800 (+1,800)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,400 (+2,400)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,000 (+3,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T3 Heavy Air Transport: Continental":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,950 (+450)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 5,400 (+900)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,850 (+1,350)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 6,300 (+1,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,750 (+2,250)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Defense Satellite":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 110 (+10)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 120 (+20)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 130 (+30)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 140 (+40)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 150 (+50)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T1 Land Scout: Snoop":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 31 (+2)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 34 (+5)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 37 (+8)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 40 (+11)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 43 (+14)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T1 Mobile Light Artillery: Lobo":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T1 Mobile Anti-Air Gun: Archer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Light Assault Bot: Mech Marine":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 82 (+7)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 90 (+15)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 97 (+22)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 105 (+30)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 112 (+37)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T1 Medium Tank: MA12 Striker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 330 (+30)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 360 (+60)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 390 (+90)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 420 (+120)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 450 (+150)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T2 Gatling Bot: Mongoose":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 715 (+65)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 780 (+130)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 845 (+195)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 910 (+260)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 975 (+325)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T2 Mobile Missile Launcher: Flapjack":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 907 (+82)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 990 (+165)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 1,072 (+247)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 1,155 (+330)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 1,237 (+412)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T2 Heavy Tank: Pillar":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T2 Amphibious Tank: Riptide":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 7", "New HP: 1,870 (+170)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 14", "New HP: 2,040 (+340)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 21", "New HP: 2,210 (+510)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 28", "New HP: 2,380 (+680)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 35", "New HP: 2,550 (+850)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,100 (+100)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 1,200 (+200)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,300 (+300)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,400 (+400)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,500 (+500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "T3 Heavy Assault Bot: Titan":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 2,420 (+220)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 2,640 (+440)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 2,860 (+660)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 3,080 (+880)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 3,300 (+1,100)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Heavy Artillery: Demolisher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,045 (+95)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,140 (+190)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,235 (+285)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,330 (+380)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,425 (+475)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Armored Assault Bot: Percival":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 20", "New HP: 10,230 (+930)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 40", "New HP: 11,160 (+1,860)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 60", "New HP: 12,090 (+2,790)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 80", "New HP: 13,020 (+3,720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 100", "New HP: 13,950 (+4,650)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Missile Platform: Spearhead":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Mobile Factory: Fatboy":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 40", "New HP: 13,750 (+1,250)", "New Regen Rate: 35 HP/s (+35 HP/s)"]
                    let l2: [String] =  ["Kills Required: 80", "New HP: 15,000 (+2,500)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    let l3: [String] =  ["Kills Required: 120", "New HP: 16,250 (+3,750)", "New Regen Rate: 65 HP/s (+65 HP/s)"]
                    let l4: [String] =  ["Kills Required: 160", "New HP: 17,500 (+5,000)", "New Regen Rate: 80 HP/s (+80 HP/s)"]
                    let l5: [String] =  ["Kills Required: 200", "New HP: 18,750 (+6,250)", "New Regen Rate: 95 HP/s (+95 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Frigate: Thunderhead Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 2,332 (+212)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,544 (+424)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,756 (+636)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,968 (+848)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 3,180 (+1,060)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Submarine: Tigershark":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 660 (+60)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 720 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 780 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 840 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 900 (+300)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Destroyer: Valiant Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 7,920 (+720)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 8,640 (+1,440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 9,360 (+2,160)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 10,080 (+2,880)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 10,800 (+3,600)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Cruiser: Governor Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,750 (+250)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 3,000 (+500)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 3,250 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 3,500 (+1,000)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,750 (+1,250)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Boat: Cooper":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,925 (+175)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 2,100 (+350)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 2,275 (+525)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 2,450 (+700)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 2,625 (+875)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battleship: Summit Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 56,100 (+5,100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 61,200 (+10,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 66,300 (+15,300)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 71,400 (+20,400)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 76,500 (+25,500)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Missile Submarine: Ace":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battlecruiser: Neptune Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 27,500 (+2,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 30,000 (+5,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 32,500 (+7,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 35,000 (+10,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 37,500 (+12,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                
                case "Experimental Aircraft Carrier: Atlantis":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 30", "New HP: 44,000 (+4,000)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 48,000 (+8,000)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 52,000 (+12,000)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 56,000 (+16,000)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 60,000 (+20,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                case "Experimental Satellite System: Novax Center":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 9,900 (+900)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 10,800 (+1,800)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 11,700 (+2,700)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 12,600 (+3,600)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 13,500 (+4,500)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            
            //UEF Weapons
            if vweName == "Weapons"
            {
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Zephyr Anti-Matter Cannon", "Overcharge Cannon", "Tactical Warhead", "Nuclear Warhead", "Death Nuke", "Teleport in"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 100", "Range: 1-22",
                                         "Projectile: 100 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 project per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Overcharge", "DPS: 3,636.36", "Range: 0-22", "Area Damage Radius: 2.5", "Projectile: 12,000 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 3.3 seconds", "Energy Required: 5,000 (-5,000)", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Missile, Normal", "DPS: 30,000", "Range: 5-256", "Area Damage Radius: 2", "Projectile: 6,000 damage", "Muzzle Velocity: 10", "Lifetime: 80", "Fire Cycle: 1 projectile every 0.2 seconds", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Missile, Normal", "Range: 5-256", "Area Damage Radius: 0", "Nuke Inner-Ring Damage: 12,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 25", "Firing Tolerance: 2°"]
                    let w5: [String] =  ["Type: Death, Deathnuke", "Nuke Inner-Ring Damage: 2,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w6: [String] =  ["Type: Teleport, Normal", "DPS: 100", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage" , "Fire Cycle: 1 projectile per second"]
                    unitSectionCells = [w1, w2, w3, w4, w5, w6]
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Heavy Plasma Cannon", "Death Nuke"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 300", "Range: 1-25", "Area Damage Radius: 0", "Projectile: 300 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 1,000", "Area Damage Radius: 10", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                    
                case "T2 Field Engineer: Sparky":
                    unitSectionNames = ["Hell's Fury Riot Gun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 30", "Range: 0-18", "Projectile: 15 damage", "Muzzle Velocity: 16", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Power Generator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 250", "Area Damage Radius: 2"]
                    unitSectionCells = [w1]
                    
                case "T1 Energy Storage":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,000", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T2 Mass Fabricator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 370", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T2 Power Generator: EG-200 Fusion Reactor":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,500", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T3 Power Generator: EG-900 Fusion Reactor":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 8,000", "Area Damage Radius: 10"]
                    unitSectionCells = [w1]
                
                case "T3 Mass Fabricator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 5,000", "Area Damage Radius: 14"]
                    unitSectionCells = [w1]
                    
                case "T1 Point Defense: DM1 Plasma Cannon":
                    unitSectionNames = ["Light Plasma Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 166.67", "Range: 0-26", "Projectile: 50 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Anti-Air Turret: DA1 Railgun":
                    unitSectionNames = ["Linked Railgun"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 65.71", "Range: 0-44", "Projectile: 23 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 0.7 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Torpedo Launcher: DN1":
                    unitSectionNames = ["Angler Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-50", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 4s", "Reload: 3.3 seconds", "Firing Tolerance: 30°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Launcher: Aloha":
                    unitSectionNames = ["Long Range Cruise Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 15-256", "Area Damage Radius: 2", "Tactical Missile: 6,000 damage", "Muzzle Velocity: 10", "Lifetime: 30","Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    unitSectionNames = ["Fragmentation Flank"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 156.25", "Range: 0-50", "Area Damage Radius: 3.5", "Projectile: 125 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 0.8 seconds", "Firing Randomness: 2°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Torpedo Launcher: Tsunami":
                    unitSectionNames = ["Angler Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 150", "Range: 0-60", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 4 times 1 projectile every 0.5s", "Reload: 2.5 seconds", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T2 Point Defense: Triad":
                    unitSectionNames = ["Gauss Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 123.53", "Range: 0-50", "Area Damage Radius: 2",  "Projectile: 70 damage", "Muzzle Velocity: 35", "Fire Cycle: 3 projectiles every 1.7 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T2 Artillery Installation: Klink Hammer":
                    unitSectionNames = ["APDS Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 100", "Range: 5-128", "Area Damage Radius: 3",  "Projectile: 2,000 damage", "Muzzle Velocity: 26.13", "Fire Cycle: 1 projectile every 20 seconds", "Energy Required: 1,000 (-100)", "Firing Randomness: 2°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T3 Heavy Artillery Installation: Duke":
                    unitSectionNames = ["Anti-Matter Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 550", "Range: 150-750", "Area Damage Radius: 6",  "Projectile: 5,500 damage", "Muzzle Velocity: 62", "Lifetime: 120", "Fire Cycle: 1 projectile every 10 seconds", "Energy Required: 8,000 (-4,000)", "Firing Randomness: 0.525°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Anti-Air SAM Launcher: Flayer":
                    unitSectionNames = ["Flayer SAM Launcher"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-60", "Area Damage Radius: 1.5",  "Projectile: 200 damage", "Muzzle Velocity: 45", "Lifetime: 6", "Fire Cycle: 6 times 1 projectile every 0.1s", "Reload: 3.1 seconds", "Firing Tolerance: 10°"]
                    unitSectionCells = [w1]
    
                case "T3 Strategic Missile Launcher: Stonager":
                    unitSectionNames = ["Nuclear Warhead", "Death Weapons"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 70,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 6"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Heavy Point Defense: Ravager":
                    unitSectionNames = ["Heavy Plasma Gatling Gun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 328.13", "Range: 0-70", "Area Damage Radius: 1",  "Projectile: 175 damage", "Muzzle Velocity: 32", "Fire Cycle: 15 times 1 projectile every 0.2s", "Reload: 5.2 seconds",  "Energy Required: 50 (-50)", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "Experimental Artillery: Mavor":
                    unitSectionNames = ["Anti-Matter Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 1,500", "Range: 150-4,000", "Area Damage Radius: 7",  "Projectile: 12,000 damage", "Muzzle Velocity: 160", "Lifetime: 1,000", "Fire Cycle: 1 projectile every 8 seconds",  "Energy Required: 30,000 (-7,500)", "Firing Randomness: 0.22°", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Defense: Buzzkill":
                    unitSectionNames = ["Phalanx Anti Missile"]
                    let w1: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-30", "Projectile: 1 damage (Destroys Missile)", "Muzzle Velocity: 100", "Fire Cycle: 1 projectile every 2 seconds"]
                    unitSectionCells = [w1]
              
                case "T3 Strategic Missile Defense: Nuke Eliminator":
                    unitSectionNames = ["Anti-Nuke"]
                    let w1: [String] =  ["Type: Defense, Normal", "Range: 0-90", "Tactile Missile: 30 damage", "Muzzle Velocity: 90", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T3 Sonar Platform: SP3-3000":
                    unitSectionNames = ["Angler Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 37.5", "Range: 0-45", "Projectile: 75 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s", "Reload: 3.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Air Scout: Hummingbird":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 10", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Interceptor: Cyclone":
                    unitSectionNames = ["Linked Railgun", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 50", "Range: 0-25", "Projectile: 50 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile per second"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]

                case "T1 Attack Bomber: Scorcher":
                    unitSectionNames = ["Napalm Carpet Bomb", "Air Crash"]
                    //TODO edit this weapon projectile?
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 40", "Range: 0-40", "Area Damage Radius: 3", "Projectile: 4 damage", "Muzzle Velocity: 0", "Fire Cycle: 5 times 1 projectile every  0.2s", "Reload: 3.4 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]

                case "T1 Light Air Transport: C-6 Courier":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Fighter/Bomber: Janus":
                    unitSectionNames = ["Linked Railgun (2)", "Napalm Carpet Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 75", "Range: 0-30", "Area Damage Radius: 0", "Projectile: 75 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 1°"]
                    //TODO edit this weapon projectile?
                    let w2: [String] =  ["Type: Bomb, Normal", "DPS: 60", "Range: 0-60", "Area Damage Radius: 3", "Projectile: 75 damage", "Muzzle Velocity: 0", "Fire Cycle: 8 times 1 projectile every 0.2s", "Reload: 8.6 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 6°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                
                case "T2 Air Transport: C14 Star Lifter":
                    unitSectionNames = ["Hell's Fury Riot Gun (2)", "Linked Railgun (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 10", "Range 0-22", "Projectile: 3 damage", "Muzzle Velocity: 13", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 0.1°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 24", "Range: 0-20", "Projectile: 12 damage", "Muzzle Velocity: 35", "Fire Cycle: 2 projectiles every second", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T2 Gunship: Stinger":
                    unitSectionNames = ["Hell's Fury Riot Gun", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 66.67", "Range 0-22", "Projectile: 20 damage", "Muzzle Velocity: 40", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                
                case "T2 Torpedo Bomber: Stork":
                    unitSectionNames = ["Angler Torpedo", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 60", "Range 4-42", "Projectile: 375 damage", "Muzzle Velocity: 14", "Lifetime: 20", "Fire Cycle: 2 times 1 projectile every 1.7s", "Reload: 10.8 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 150", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Spy Plane: SR90 Blackbird":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                
                case "T3 Air-Superiority Fighter: Wasp":
                    unitSectionNames = ["Ginsu Pulse Beam (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 200", "Range: 0-30", "Area Damage Radius: 0", "Projectile: 200 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile per second"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Strategic Bomber: Ambassador":
                    unitSectionNames = ["Small Yield Nuclear Bomb", "Linked Railgun (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 600", "Range: 0-90", "Area Damage Radius: 6", "Projectile: 3,000 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 22.86", "Range: 0-44", "Projectile: 16 damage", "Muzzle Velocity: 45", "Fire Cycle: 1 projectile every 0.7 seconds"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 500", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                
                case "T3 Heavy Gunship: Broadship":
                    unitSectionNames = ["Heavy Plasma Cannon", "Linked Railgun", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 225", "Range: 0-25", "Projectile: 90 damage", "Muzzle Velocity: 40", "Fire Cycle: 1 projectile every 0.4 seconds", "Firing Randomness: 0.3°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 12.31", "Range: 0-44", "Projectile: 8 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 1.3 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 300", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]

                case "T3 Heavy Air Transport: Continental":
                    unitSectionNames = ["Heavy Plasma Cannon (2)", "Flayer SAM Launcher (4)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 30", "Range: 0-25", "Projectile: 15 damage", "Muzzle Velocity: 12", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 66.67", "Range: 0-50", "Projectile: 20 damage", "Muzzle Velocity: 30", "Lifetime: 6", "Fire Cycle: 1 projectiles every 0.3 seconds", "Firing Tolerance: 10°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 3", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "Defense Satellite":
                    unitSectionNames = ["Orbital Death Laser", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 200", "Range: 0-32", "Area Damage Radius: 1", "Beam: 50 damage", "Fire Cycle: 1 beam every 20 seconds"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 3,000", "Area Damage Radius: 2"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Land Scout: Snoop":
                    unitSectionNames = ["Tom Cat Machinegun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 2", "Range: 0-25", "Projectile: 4 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Light Artillery: Lobo":
                    unitSectionNames = ["Fragmentation Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 60.24", "Range: 5-30", "Area Damage Radius: 1", "Projectile: 100 damage", "Muzzle Velocity: 14", "Fire Cycle: 5 projectiles every 8.3 seconds", "Firing Randomness: 0.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Anti-Air Gun: Archer":
                    unitSectionNames = ["Linked Railgun"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 16", "Range: 0-32", "Projectile: 8 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles per second", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]

                case "T1 Light Assault Bot: Mech Marine":
                    unitSectionNames = ["Tom Cat Machinegun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 23.33", "Range: 0-14", "Projectile: 7 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Medium Tank: MA12 Striker":
                    unitSectionNames = ["Gauss Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 24", "Range: 0-18", "Area Damage Radius: 0", "Projectile: 24 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Gatling Bot: Mongoose":
                    unitSectionNames = ["Gatling Plasma Cannon", "Heavy Fragmentation Grenade Launcher"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 32.14", "Range: 0-34", "Projectile: 15 damage", "Muzzle Velocity: 25", "Fire Cycle: 15 times 1 projectile every 0.2s","Reload: 4.2 seconds", "Firing Randomness: 0.4°", "Firing Tolerance: 1°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 29.85", "Range: 0-34", "Area Damage Radius: 2", "Projectile: 50 damage", "Muzzle Velocity: 12.8", "Fire Cycle: 4 times 1 projectile every 0.2s", "Reload: 6.1s", "Firing Randomness: 2.5°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1, w2]
               
                case "T2 Mobile Missile Launcher: Flapjack":
                    unitSectionNames = ["Long Range Cruise Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 60", "Range: 5-60", "Area Damage Radius: 0.5", "Projectile: 300 damage", "Muzzle Velocity: 3", "Lifetime: 20", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Heavy Tank: Pillar":
                    unitSectionNames = ["Gauss Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 53.85", "Range: 0-23", "Area Damage Radius: 0", "Projectile: 35 damage", "Muzzle Velocity: 30", "Fire Cycle: 2 projectiles every 1.3 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                
                case "T2 Amphibious Tank: Riptide":
                    unitSectionNames = ["Hell's Fury Riot Gun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 90", "Range 0-18", "Projectile: 13.5 damage", "Muzzle Velocity: 40", "Fire Cycle: 2 projectiles every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    unitSectionNames = ["Fragmentation Flank"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 144", "Range 0-40", "Area Damage Radius: 4", "Projectile: 36 damage", "Muzzle Velocity: 20", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Heavy Assault Bot: Titan":
                    unitSectionNames = ["Heavy Plasma Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 166.67", "Range 0-20", "Projectile: 50 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Mobile Heavy Artillery: Demolisher":
                    unitSectionNames = ["Anti-Matter Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 75", "Range 0-90", "Area Damage Radius: 4", "Projectile: 750 damage", "Muzzle Velocity: 22", "Lifetime: 20", "Fire Cycle: 1 projectile every 10 seconds", "Firing Randomness: 1.25°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Armored Assault Bot: Percival":
                    unitSectionNames = ["Ionized Plasma Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 400", "Range 0-35", "Area Damage Radius: 0", "Projectile: 160 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 4 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Mobile Missile Platform: Spearhead":
                    unitSectionNames = ["Long Range Cruise Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 240", "Range: 5-80", "Area Damage Radius: 0.5", "Projectile: 800 damage", "Muzzle Velocity: 3", "Lifetime: 20", "Fire Cycle: 3 projectile every 10 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
               
                case "Experimental Mobile Factory: Fatboy":
                    unitSectionNames = ["Gauss Cannon (4)", "Hell's Fury Riot Gun (2)", "Linked Railgun (2)", "Angler Torpedo", "Death Weapon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 750", "Range: 0-100", "Area Damage Radius: 1.5", "Projectile: 250 damage", "Muzzle Velocity: 25", "Fire Cycle: 3 projectiles per second", "Firing Randomness: 1.1°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 500", "Range: 0-45", "Projectile: 150 damage", "Muzzle Velocity: 45", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Anti-Air, Normal", "DPS: 57.14", "Range: 0-45", "Projectile: 20 damage", "Muzzle Velocity: 90", "Fire Cycle: 2 projectiles every 0.7 seconds", "Firing Randomness: 0.01°", "Firing Tolerance: 0.05°"]
                    let w4: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-40", "Projectile: 75 damage", "Muzzle Velocity: 5", "Lifetime: 9", "Fire Cycle: 4 projectiles every 4 seconds", "Firing Tolerance: 2°"]
                    let w5: [String] =  ["Type: Death, Normal", "Damage: 4,000", "Area Damage Radius: 7"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                    
                case "T1 Frigate: Thunderhead Class":
                    unitSectionNames = ["Gauss Cannon", "Linked Railgun"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 50", "Range: 0-28", "Area Damage Radius: 1", "Projectile: 85 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 1.7 seconds", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 10", "Range: 0-48", "Projectile: 5 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every second", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Submarine: Tigershark":
                    unitSectionNames = ["Angler Torpedo", "Light Plasma Cannon"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 37.5", "Range: 0-32", "Projectile: 75 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s","Reload: 3.3 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 25", "Range: 0-32", "Projectile: 25 damage", "Muzzle Velocity: 30", "Lifetime: 1.6", "Fire Cycle: 1 projectile every second", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Destroyer: Valiant Class":
                    unitSectionNames = ["Gauss Cannon (2)", "Linked Railgun", "Angler Torpedo", "Smart Charge Anti-Torpedo"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 137.5", "Range: 0-60", "Area Damage Radius: 1", "Projectile: 275 damage", "Muzzle Velocity: 30", "Fire Cycle: 2 projectiles every 4 seconds", "Firing Randomness: 0.35°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 14.29", "Range: 0-60", "Projectile: 10 damage", "Muzzle Velocity: 60", "Fire Cycle: 2 projectiles every 1.4 seconds", "Firing Tolerance: 1°"]
                    let w3: [String] =  ["Type: Anti-Navy, Normal", "DPS: 30", "Range: 0-45", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectiles every 0.7s","Reload: 9.3 seconds", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 0.4", "Range: 15-30", "Projectile: 2 damage", "Muzzle Velocity: 5", "Lifetime: 3", "Fire Cycle: 2 projectiles every 10 seconds", "Firing Tolerance: 15°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "T2 Cruiser: Governor Class":
                    unitSectionNames = ["Long Range Cruise Missile", "Gauss Cannon", "Flayer SAM Launcher", "Phalanx Anti-Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 120", "Range: 12.5-150", "Area Damage Radius: 3", "Projectile: 300 damage", "Muzzle Velocity: 5", "Lifetime: 20", "Fire Cycle: 4 times 1 projectile every 1.4s", "Reload: 5.8 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 50", "Range: 0-60", "Area Damage Radius: 1", "Projectile: 200 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 4 seconds", "Firing Randomness: 0.5°", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Anti-Air, Normal", "DPS: 500", "Range: 0-75", "Projectile: 250 damage", "Muzzle Velocity: 30", "Lifetime: 4", "Fire Cycle: 4 times 1 projectile every 0.3s","Reload: 9.3 seconds", "Firing Tolerance: 10°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-50", "Projectile: 1 damage", "Muzzle Velocity: 100", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "T2 Torpedo Boat: Cooper":
                    unitSectionNames = ["Angler Torpedo", "Smart Charge Anti-Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 96.97", "Range: 0-50", "Projectile: 80 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 4 times 1 projectile every 0.3s","Reload: 2.4 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 1.6", "Range: 10-25", "Projectile: 2 damage", "Muzzle Velocity: 5", "Lifetime: 2.5", "Fire Cycle: 2 projectiles every 2.5 seconds", "Firing Tolerance: 15°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Battleship: Summit Class":
                    unitSectionNames = ["Gauss Cannon (3)", "Linked Railgun (4)", "Phalanx Anti-Missile (2)"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 150", "Range: 0-150", "Area Damage Radius: 3", "Projectile: 1,000 damage", "Muzzle Velocity: 30", "Fire Cycle: 3 projectiles every 20 seconds", "Firing Randomness: 0.3°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 14.12", "Range: 0-60", "Projectile: 12 damage", "Muzzle Velocity: 90", "Fire Cycle: 2 projectiles every 1.7 seconds", "Firing Tolerance: 1°"]
                    let w3: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-50", "Projectile: 1 damage", "Muzzle Velocity: 100", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1, w2, w3]

                case "T3 Strategic Missile Submarine: Ace":
                    unitSectionNames = ["Long Range Cruise Missile", "Nuclear Warhead"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 200", "Range: 15-256", "Area Damage Radius: 3", "Projectile: 2,000 damage", "Muzzle Velocity: 5", "Lifetime: 50", "Fire Cycle: 1 projectile every 10 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Missile, Normal", "Range: 128-410", "Area Damage Radius: 0", "Nuke Inner-Ring Damage: 22,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 3,000", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Battlecruiser: Neptune Class":
                    unitSectionNames = ["Dual-Barreled Hiro Plasma Cannon (2)", "Angler Torpedo", "Phalanx Anti-Missile", "Smart Charge Anti-Torpedo"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 282.09", "Range: 0-80", "Area Damage Radius: 1", "Beam: 9 times every 0.1 seconds 105 dmg", "Fire Cycle: 2 beams every 6.7 seconds"]
                    let w2: [String] =  ["Type: Anti-Navy, Normal", "DPS: 20", "Range: 0-60", "Projectile: 50 damage", "Muzzle Velocity: 8", "Lifetime: 7", "Fire Cycle: 4 times 1 projectile every 0.7s", "Reload: 7.9 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-50", "Projectile: 1 damage", "Muzzle Velocity: 100", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 5°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 0.4", "Range: 10-30", "Projectile: 2 damage", "Muzzle Velocity: 5", "Lifetime: 6", "Fire Cycle: 2 projectiles every 10 seconds", "Firing Tolerance: 15°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "Experimental Aircraft Carrier: Atlantis":
                    unitSectionNames = ["Angler Torpedo", "Flayer SAM Launcher (4)"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 400", "Range: 0-80", "Projectile: 200 damage", "Muzzle Velocity: 5", "Lifetime: 9", "Fire Cycle: 4 projectiles every 2 seconds", "Firing Tolerance: 60°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 80", "Range: 0-100", "Area Damage Radius: 1.5",  "Projectile: 280 damage", "Muzzle Velocity: 30", "Lifetime: 6", "Fire Cycle: 1 projectile every 3.5 seconds", "Firing Tolerance: 100°"]
                    unitSectionCells = [w1, w2]
                
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
                
            }
            
            //UEF Enhancements
            if vweName == "Enhancements"
            {
                
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Tech 2 Engineering Suite", "Nano-Repair System", "Zephyr Amplifier", "C-D1 Shoulder Drone", "Resource Allocation System", "C-D2 Shoulder Drone", "Personal Shield Generator", "Shield Generator Field", "Tech 3 Engineering Suite", "Tactical Missile Launcher", "The Billy: Advanced Tactical Missile Launcher", "Personal Teleporter"]
                    
                    let e1: [String] =  ["Section: LCH", "Mass: 720", "Energy: 18,000", "Build Time: 900", "New HP: 15,000 (+3,000)", "New Regen Rate: 30 HP/s (+20 HP/s)", "New Build Rate: 42"]
                    let e2: [String] =  ["Section: LCH", "Mass: 1,200", "Energy: 44,800", "Build Time: 1,400", "New Regen Rate: 70 HP/s (+60 HP/s)"]
                    let e3: [String] =  ["Section: RCH", "Mass: 800", "Energy: 24,000", "Build Time: 800", "New Weapons Range: 30", "New Projectile Damage: 200 (+100)"]
                    let e4: [String] =  ["Section: Back", "Mass: 120", "Energy: 2,400", "Build Time: 400"]
                    let e5: [String] =  ["Section: RCH", "Mass: 5,000 (+14)", "Energy: 150,000 (+3,300)", "Build Time: 1,400"]
                    let e6: [String] =  ["Section: Back", "Mass: 120", "Energy: 2,400", "Build Time: 400"]
                    let e7: [String] =  ["Section: Back", "Mass: 1,500", "Energy: 112,500 (-250)", "Build Time: 2,100", "Shield HP: 24,000", "Shield Size: 3", "Shield Regen Rate: 35 HP/s", "Shield Recharge Time: 140s", "Shield Recharge Rate: 171 HP/s"]
                    let e8: [String] =  ["Section: Back", "Mass: 3,000", "Energy: 450,000 (-500)", "Build Time: 2,800", "Shield HP: 36,000", "Shield Size: 16", "Shield Regen Rate: 42 HP/s", "Shield Recharge Time: 175s", "Shield Recharge Rate: 205 HP/s"]
                    let e9: [String] =  ["Section: LCH", "Mass: 2,400", "Energy: 50,000", "Build Time: 8,400", "New HP: 18,000 (+ 6,000)", "New Regen Rate: 45 HP/s (+35 HP/s)", "New Build Rate: 126"]
                    let e10: [String] =  ["Section: Back", "Mass: 1,000", "Energy: 50,000", "Build Time: 1,400"]
                    let e11: [String] =  ["Section: Back", "Mass: 5,400", "Energy: 315,000", "Build Time: 5,600"]
                    let e12: [String] =  ["Section: Back", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 4,200"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12]
                    
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Energy Accelerator", "Heavy Plasma Reactor", "C-D2 Engineering Drove", "Radar Jammer", "Resource Allocation System", "Enhanced Sensor System", "Personal Shield Generator", "Shield Generator Field"]
                    
                    let e1: [String] =  ["Section: LCH","Mass: 1,000", "Energy: 45,000", "Build Time: 5,040", "New Rate of Fire: 2.5"]
                    let e2: [String] =  ["Section: RCH", "Mass: 800", "Energy: 30,000", "Build Time: 3,360", "New Damage Radius: 2.5", "New Weapons Range: 35"]
                    let e3: [String] =  ["Section: Back", "Mass: 380", "Energy: 9,000", "Build Time: 2,520"]
                    let e4: [String] =  ["Section: Back", "Mass: 600", "Energy: 18,000 (+100)", "Build Time: 2,520"]
                    let e5: [String] =  ["Section: RCH", "Mass: 4,500 (+10)", "Energy: 60,000 (+1,000)", "Build Time: 8,400"]
                    let e6: [String] =  ["Section: LCH", "Mass: 1,000", "Energy: 20,000", "Build Time: 3,360", "New Omni Radius: 80", "New Vision Radius: 45"]
                    let e7: [String] =  ["Section: Back", "Mass: 2,000", "Energy: 93,750 (-500)", "Build Time: 7,000", "Shield HP: 32,000", "Shield Size: 3", "Shield Regen Rate: 50 HP/s", "Shield Recharge Time: 170s", "Shield Recharge Rate: 188 HP/s"]
                    let e8: [String] =  ["Section: Back", "Mass: 3,500", "Energy: 400,000 (-1,000)", "Build Time: 11,200", "Shield HP: 52,000", "Shield Size: 20", "Shield Regen Rate: 150 HP/s", "Shield Recharge Time: 215s", "Shield Recharge Rate: 241 HP/s"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8]
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
                
                
                
            }
            
            
        }
        
        //FACTION AEON
        if factionName == "Aeon"
        {
            //AEON Veterancy
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
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 25", "New HP: 17,600 (+1,600)", "New Regen Rate: 25 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 19,200 (+3,200)", "New Regen Rate: 30 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 20,800 (+4,800)", "New Regen Rate: 35 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 22,400 (+6,400)", "New Regen Rate: 40 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 24,000 (+8,000)", "New Regen Rate: 45 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Field Engineer: Sparky":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,144 (+104)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,248 (+208)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,352 (+312)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,456 (+416)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,560 (+520)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Point Defense: DM1 Plasma Cannon":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Anti-Air Turret: DA1 Railgun":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 4", "New HP: 880 (+80)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 960 (+160)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,040 (+240)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,120 (+320)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,200 (+400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Torpedo Launcher: DN1":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Tactical Missile Launcher: Aloha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 8", "New HP: 2,849 (+259)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 3,108 (+518)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 3,367 (+777)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 3,626 (+1,036)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 3,885 (+1,295)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Launcher: Tsunami":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 7,040 (+640)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,680 (+1,280)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 8,320 (+1,920)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,960 (+2,560)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,600 (+3,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Point Defense: Triad":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 2,475 (+225)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,700 (+450)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,925 (+675)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 3,150 (+900)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 3,375 (+1,125)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Artillery Installation: Klink Hammer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 15", "New HP: 3,960 (+360)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 4,320 (+720)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 4,680 (+1,080)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 5,040 (+1,440)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 5,400 (+1,800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Heavy Artillery Installation: Duke":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 16,500 (+1,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 18,000 (+3,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 19,500 (+4,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 21,000 (+6,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 22,500 (+7,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Anti-Air SAM Launcher: Flayer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 7,700 (+700)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 8,400 (+1,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,100 (+2,100)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 9,800 (+2,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 10,500 (+3,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Strategic Missile Launcher: Stonager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Point Defense: Ravager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 8,250 (+750)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 9,000 (+1,500)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,750 (+2,250)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 10,500 (+3,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 11,250 (+3,750)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Artillery: Mavor":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 50", "New HP: 8,800 (+800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 9,600 (+1,600)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 10,400 (+2,400)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 11,200 (+3,200)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 12,000 (+4,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Sonar Platform: SP3-3000":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,200 (+200)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 2,400 (+400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 2,600 (+600)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 2,800 (+800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,000 (+1,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Interceptor: Cyclone":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 324 (+29)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 354 (+59)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 383 (+88)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 413 (+118)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 442 (+147)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Bomber: Scorcher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 236 (+21)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 258 (+43)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 279 (+64)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 301 (+86)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 322 (+107)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Fighter/Bomber: Janus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,320 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,440 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,560 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,680 (+480)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,800 (+600)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Air Transport: C14 Star Lifter":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 1,842 (+167)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 2,010 (+335)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 2,177 (+502)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 2,345 (+670)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 2,512 (+837)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gunship: Stinger":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 968 (+88)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,056 (+176)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,144 (+264)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,232 (+352)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,320 (+440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Bomber: Stork":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 946 (+86)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 1,032 (+172)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 1,118 (+258)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,204 (+344)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,290 (+430)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Air-Superiority Fighter: Wasp":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 1,980 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,160 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,340 (+540)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,520 (+720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 2,700 (+900)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Bomber: Ambassador":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Gunship: Broadship":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 6,600 (+600)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,200 (+1,200)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 7,800 (+1,800)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,400 (+2,400)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,000 (+3,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Air Transport: Continental":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,950 (+450)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 5,400 (+900)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,850 (+1,350)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 6,300 (+1,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,750 (+2,250)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Defense Satellite":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 110 (+10)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 120 (+20)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 130 (+30)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 140 (+40)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 150 (+50)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Land Scout: Snoop":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 31 (+2)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 34 (+5)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 37 (+8)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 40 (+11)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 43 (+14)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Light Artillery: Lobo":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Anti-Air Gun: Archer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Light Assault Bot: Mech Marine":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 82 (+7)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 90 (+15)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 97 (+22)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 105 (+30)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 112 (+37)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Medium Tank: MA12 Striker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 330 (+30)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 360 (+60)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 390 (+90)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 420 (+120)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 450 (+150)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gatling Bot: Mongoose":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 715 (+65)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 780 (+130)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 845 (+195)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 910 (+260)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 975 (+325)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile Missile Launcher: Flapjack":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 907 (+82)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 990 (+165)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 1,072 (+247)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 1,155 (+330)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 1,237 (+412)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Heavy Tank: Pillar":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Amphibious Tank: Riptide":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 7", "New HP: 1,870 (+170)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 14", "New HP: 2,040 (+340)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 21", "New HP: 2,210 (+510)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 28", "New HP: 2,380 (+680)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 35", "New HP: 2,550 (+850)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,100 (+100)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 1,200 (+200)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,300 (+300)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,400 (+400)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,500 (+500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Assault Bot: Titan":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 2,420 (+220)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 2,640 (+440)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 2,860 (+660)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 3,080 (+880)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 3,300 (+1,100)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Heavy Artillery: Demolisher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,045 (+95)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,140 (+190)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,235 (+285)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,330 (+380)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,425 (+475)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Armored Assault Bot: Percival":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 20", "New HP: 10,230 (+930)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 40", "New HP: 11,160 (+1,860)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 60", "New HP: 12,090 (+2,790)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 80", "New HP: 13,020 (+3,720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 100", "New HP: 13,950 (+4,650)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Missile Platform: Spearhead":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Mobile Factory: Fatboy":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 40", "New HP: 13,750 (+1,250)", "New Regen Rate: 35 HP/s (+35 HP/s)"]
                    let l2: [String] =  ["Kills Required: 80", "New HP: 15,000 (+2,500)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    let l3: [String] =  ["Kills Required: 120", "New HP: 16,250 (+3,750)", "New Regen Rate: 65 HP/s (+65 HP/s)"]
                    let l4: [String] =  ["Kills Required: 160", "New HP: 17,500 (+5,000)", "New Regen Rate: 80 HP/s (+80 HP/s)"]
                    let l5: [String] =  ["Kills Required: 200", "New HP: 18,750 (+6,250)", "New Regen Rate: 95 HP/s (+95 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Frigate: Thunderhead Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 2,332 (+212)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,544 (+424)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,756 (+636)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,968 (+848)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 3,180 (+1,060)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Submarine: Tigershark":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 660 (+60)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 720 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 780 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 840 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 900 (+300)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Destroyer: Valiant Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 7,920 (+720)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 8,640 (+1,440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 9,360 (+2,160)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 10,080 (+2,880)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 10,800 (+3,600)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Cruiser: Governor Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,750 (+250)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 3,000 (+500)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 3,250 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 3,500 (+1,000)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,750 (+1,250)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Boat: Cooper":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,925 (+175)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 2,100 (+350)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 2,275 (+525)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 2,450 (+700)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 2,625 (+875)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battleship: Summit Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 56,100 (+5,100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 61,200 (+10,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 66,300 (+15,300)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 71,400 (+20,400)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 76,500 (+25,500)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Missile Submarine: Ace":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battlecruiser: Neptune Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 27,500 (+2,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 30,000 (+5,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 32,500 (+7,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 35,000 (+10,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 37,500 (+12,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Aircraft Carrier: Atlantis":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 30", "New HP: 44,000 (+4,000)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 48,000 (+8,000)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 52,000 (+12,000)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 56,000 (+16,000)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 60,000 (+20,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Satellite System: Novax Center":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 9,900 (+900)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 10,800 (+1,800)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 11,700 (+2,700)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 12,600 (+3,600)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 13,500 (+4,500)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            //Aeon Weapons
            if vweName == "Weapons"
            {
            }
            //Aeon Enhancements
            if vweName == "Enhancements"
            {
            }
        }
        
        //FACTION CYBRAN
        if factionName == "Cybran"
        {
            //Cybran Veterancy
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
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 25", "New HP: 17,600 (+1,600)", "New Regen Rate: 25 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 19,200 (+3,200)", "New Regen Rate: 30 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 20,800 (+4,800)", "New Regen Rate: 35 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 22,400 (+6,400)", "New Regen Rate: 40 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 24,000 (+8,000)", "New Regen Rate: 45 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Field Engineer: Sparky":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,144 (+104)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,248 (+208)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,352 (+312)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,456 (+416)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,560 (+520)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Point Defense: DM1 Plasma Cannon":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Anti-Air Turret: DA1 Railgun":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 4", "New HP: 880 (+80)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 960 (+160)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,040 (+240)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,120 (+320)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,200 (+400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Torpedo Launcher: DN1":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Tactical Missile Launcher: Aloha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 8", "New HP: 2,849 (+259)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 3,108 (+518)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 3,367 (+777)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 3,626 (+1,036)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 3,885 (+1,295)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Launcher: Tsunami":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 7,040 (+640)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,680 (+1,280)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 8,320 (+1,920)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,960 (+2,560)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,600 (+3,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Point Defense: Triad":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 2,475 (+225)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,700 (+450)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,925 (+675)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 3,150 (+900)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 3,375 (+1,125)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Artillery Installation: Klink Hammer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 15", "New HP: 3,960 (+360)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 4,320 (+720)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 4,680 (+1,080)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 5,040 (+1,440)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 5,400 (+1,800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Heavy Artillery Installation: Duke":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 16,500 (+1,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 18,000 (+3,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 19,500 (+4,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 21,000 (+6,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 22,500 (+7,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Anti-Air SAM Launcher: Flayer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 7,700 (+700)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 8,400 (+1,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,100 (+2,100)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 9,800 (+2,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 10,500 (+3,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Strategic Missile Launcher: Stonager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Point Defense: Ravager":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 8,250 (+750)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 9,000 (+1,500)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,750 (+2,250)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 10,500 (+3,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 11,250 (+3,750)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Artillery: Mavor":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 50", "New HP: 8,800 (+800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 9,600 (+1,600)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 10,400 (+2,400)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 11,200 (+3,200)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 12,000 (+4,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Sonar Platform: SP3-3000":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,200 (+200)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 2,400 (+400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 2,600 (+600)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 2,800 (+800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,000 (+1,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Interceptor: Cyclone":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 324 (+29)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 354 (+59)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 383 (+88)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 413 (+118)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 442 (+147)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Bomber: Scorcher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 236 (+21)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 258 (+43)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 279 (+64)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 301 (+86)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 322 (+107)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Fighter/Bomber: Janus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,320 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,440 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,560 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,680 (+480)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,800 (+600)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Air Transport: C14 Star Lifter":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 1,842 (+167)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 2,010 (+335)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 2,177 (+502)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 2,345 (+670)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 2,512 (+837)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gunship: Stinger":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 968 (+88)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,056 (+176)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,144 (+264)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,232 (+352)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,320 (+440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Bomber: Stork":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 946 (+86)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 1,032 (+172)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 1,118 (+258)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,204 (+344)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,290 (+430)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Air-Superiority Fighter: Wasp":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 1,980 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,160 (+360)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,340 (+540)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,520 (+720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 2,700 (+900)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Bomber: Ambassador":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Gunship: Broadship":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 6,600 (+600)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,200 (+1,200)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 7,800 (+1,800)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,400 (+2,400)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,000 (+3,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Air Transport: Continental":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,950 (+450)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 5,400 (+900)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,850 (+1,350)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 6,300 (+1,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,750 (+2,250)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Defense Satellite":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 110 (+10)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 120 (+20)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 130 (+30)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 140 (+40)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 150 (+50)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Land Scout: Snoop":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 31 (+2)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 34 (+5)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 37 (+8)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 40 (+11)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 43 (+14)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Light Artillery: Lobo":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Anti-Air Gun: Archer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Light Assault Bot: Mech Marine":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 82 (+7)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 90 (+15)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 97 (+22)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 105 (+30)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 112 (+37)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Medium Tank: MA12 Striker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 330 (+30)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 360 (+60)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 390 (+90)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 420 (+120)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 450 (+150)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gatling Bot: Mongoose":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 715 (+65)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 780 (+130)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 845 (+195)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 910 (+260)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 975 (+325)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile Missile Launcher: Flapjack":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 907 (+82)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 990 (+165)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 1,072 (+247)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 1,155 (+330)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 1,237 (+412)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Heavy Tank: Pillar":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Amphibious Tank: Riptide":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 7", "New HP: 1,870 (+170)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 14", "New HP: 2,040 (+340)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 21", "New HP: 2,210 (+510)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 28", "New HP: 2,380 (+680)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 35", "New HP: 2,550 (+850)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,100 (+100)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 1,200 (+200)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,300 (+300)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,400 (+400)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,500 (+500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Assault Bot: Titan":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 2,420 (+220)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 2,640 (+440)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 2,860 (+660)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 3,080 (+880)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 3,300 (+1,100)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Heavy Artillery: Demolisher":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,045 (+95)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,140 (+190)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,235 (+285)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,330 (+380)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,425 (+475)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Armored Assault Bot: Percival":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 20", "New HP: 10,230 (+930)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 40", "New HP: 11,160 (+1,860)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 60", "New HP: 12,090 (+2,790)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 80", "New HP: 13,020 (+3,720)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 100", "New HP: 13,950 (+4,650)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Missile Platform: Spearhead":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,870 (+170)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,040 (+340)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,210 (+510)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,380 (+680)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,550 (+850)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Mobile Factory: Fatboy":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 40", "New HP: 13,750 (+1,250)", "New Regen Rate: 35 HP/s (+35 HP/s)"]
                    let l2: [String] =  ["Kills Required: 80", "New HP: 15,000 (+2,500)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    let l3: [String] =  ["Kills Required: 120", "New HP: 16,250 (+3,750)", "New Regen Rate: 65 HP/s (+65 HP/s)"]
                    let l4: [String] =  ["Kills Required: 160", "New HP: 17,500 (+5,000)", "New Regen Rate: 80 HP/s (+80 HP/s)"]
                    let l5: [String] =  ["Kills Required: 200", "New HP: 18,750 (+6,250)", "New Regen Rate: 95 HP/s (+95 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Frigate: Thunderhead Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 2,332 (+212)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,544 (+424)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,756 (+636)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,968 (+848)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 3,180 (+1,060)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Submarine: Tigershark":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 660 (+60)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 720 (+120)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 780 (+180)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 840 (+240)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 900 (+300)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Destroyer: Valiant Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 7,920 (+720)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 8,640 (+1,440)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 9,360 (+2,160)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 10,080 (+2,880)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 10,800 (+3,600)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Cruiser: Governor Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,750 (+250)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 3,000 (+500)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 3,250 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 3,500 (+1,000)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,750 (+1,250)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Boat: Cooper":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,925 (+175)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 2,100 (+350)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 2,275 (+525)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 2,450 (+700)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 2,625 (+875)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battleship: Summit Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 56,100 (+5,100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 61,200 (+10,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 66,300 (+15,300)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 71,400 (+20,400)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 76,500 (+25,500)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Missile Submarine: Ace":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battlecruiser: Neptune Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 27,500 (+2,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 30,000 (+5,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 32,500 (+7,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 35,000 (+10,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 37,500 (+12,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Aircraft Carrier: Atlantis":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 30", "New HP: 44,000 (+4,000)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 48,000 (+8,000)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 52,000 (+12,000)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 56,000 (+16,000)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 60,000 (+20,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Satellite System: Novax Center":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 25", "New HP: 9,900 (+900)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 10,800 (+1,800)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 11,700 (+2,700)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 12,600 (+3,600)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 13,500 (+4,500)", "New Regen Rate: 0 HP/s (+0 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            //Cybran Weapons
            if vweName == "Weapons"
            {
            }
            //Cybran Enhancements
            if vweName == "Enhancements"
            {
            }
        }
        
        //FACTION SERAPHIM
        if factionName == "Seraphim"
        {
            //Seraphim Veterancy
            if vweName == "Veterancy"
            {
                
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 20", "New HP: 12,650 (+1,150)", "New Regen Rate: 13 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 40", "New HP: 13,800 (+2,300)", "New Regen Rate: 16 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 65", "New HP: 14,950 (+3,450)", "New Regen Rate: 19 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 90", "New HP: 16,100 (+4,600)", "New Regen Rate: 22 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 17,250 (+5,750)", "New Regen Rate: 25 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 25", "New HP: 17,050 (+1,550)", "New Regen Rate: 20 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 18,600 (+3,100)", "New Regen Rate: 25 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 20,150 (+4,650)", "New Regen Rate: 30 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 21,700 (+6,200)", "New Regen Rate: 35 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 23,250 (+7,750)", "New Regen Rate: 40 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Point Defense: Uttaus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Anti-Air Defense: Ialla":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 4", "New HP: 880 (+80)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 960 (+160)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,040 (+240)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,120 (+320)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,200 (+400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Torpedo Launcher: Sou-atha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,815 (+165)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,980 (+330)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,145 (+495)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,310 (+660)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,475 (+825)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Tactical Missile Launcher: Ythis":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Anti-Air Flak Artillery: Sinnatha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 8", "New HP: 2,772 (+252)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 3,024 (+504)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 3,276 (+756)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 3,528 (+1,008)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 3,780 (+1,260)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Launcher: Uosthu":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 5,280 (+480)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 5,760 (+960)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 6,240 (+1,440)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 6,720 (+1,920)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 7,200 (+2,400)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Point Defense: Uttaushala":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 2,310 (+210)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,520 (+420)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,730 (+630)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,940 (+840)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 3,150 (+1,050)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Artillery Installation: Zthuthaam":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 15", "New HP: 3,135 (+285)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 3,420 (+570)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 3,705 (+855)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 3,990 (+1,140)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 4,275 (+1,425)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Heavy Artillery Installation: Hovatham":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 14,850 (+1,350)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 16,200 (+2,700)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 17,550 (+4,050)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 18,900 (+5,400)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 20,250 (+6,750)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Anti-Air Defense: Iathu-ioz":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 7,700 (+700)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 8,400 (+1,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,100 (+2,100)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 9,800 (+2,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 10,500 (+3,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Strategic Missile Launcher: Hastue":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Missile Launcher: Yolona Oss":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 50", "New HP: 13,200 (+1,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 14,400 (+2,400)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 15,600 (+3,600)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 16,800 (+4,800)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 18,000 (+6,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Interceptor: Ia-atha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 319 (+29)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 348 (+58)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 377 (+87)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 406 (+116)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 435 (+145)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Bomber: Sinnve":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 231 (+21)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 252 (+42)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 273 (+63)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 294 (+84)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 315 (+105)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                
                    
                case "T2 Air Transport: Vishala":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 1,787 (+162)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 1,950 (+325)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 2,112 (+487)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 2,275 (+650)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 2,437 (+812)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Fighter/Bomber: Notha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,292 (+117)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,410 (+235)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,527 (+352)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,645 (+470)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,762 (+587)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gunship: Vulthoo":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 950 (+86)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,036 (+172)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,123 (+259)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,209 (+345)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,296 (+432)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Bomber: Uosioz":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 924 (+84)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 1,008 (+168)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 1,092 (+252)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,176 (+336)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,260 (+420)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Air-Superiority Fighter: Iazyne":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 1,952 (+177)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,130 (+355)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,307 (+532)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,485 (+710)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 2,662 (+887)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Bomber: Sinntha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,290 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,680 (+780)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 5,070 (+1,170)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,460 (+1,560)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 5,850 (+1,950)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "Experimental Bomber: Ahwassa":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 50", "New HP: 57,200 (+5,200)", "New Regen Rate: 40 HP/s (+15 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 62,400 (+10,400)", "New Regen Rate: 55 HP/s (+30 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 67,600 (+15,600)", "New Regen Rate: 70 HP/s (+45 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 72,800 (+20,800)", "New Regen Rate: 85 HP/s (+60 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 78,000 (+26,000)", "New Regen Rate: 100 HP/s (+75 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    //HERE
                case "T1 Combat Scout: Selen":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 38 (+3)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 42 (+7)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 45 (+10)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 49 (+14)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 52 (+17)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Light Artillery: Zthuee":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 187 (+17)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 204 (+34)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 221 (+51)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 238 (+68)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 255 (+85)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Anti-Air Gun: Ia-istle":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Medium Tank: Thaam":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 308 (+28)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 336 (+56)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 364 (+84)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 392 (+112)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 420 (+140)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile Missile Launcher: Ythisah":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 880 (+80)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 960 (+160)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 1,040 (+240)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 1,120 (+320)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 1,200 (+400)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Assault Bot: Ilshavoh":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 10", "New HP: 2,750 (+250)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 20", "New HP: 3,000 (+500)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 30", "New HP: 3,250 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 40", "New HP: 3,500 (+1,000)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 50", "New HP: 3,750 (+1,250)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Hover Tank: Yenzyne":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile Anti-Air Cannon: Iashavoh":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,100 (+100)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 1,200 (+200)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,300 (+300)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,400 (+400)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,500 (+500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Siege Tank: Othuum":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 15", "New HP: 7,370 (+670)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 8,040 (+1,340)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 8,710 (+2,010)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 9,380 (+2,680)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 10,050 (+3,350)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Heavy Artillery: Suthanus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,017 (+92)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,110 (+185)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,202 (+277)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,295 (+370)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,387 (+462)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Sniper Bot: Usha-Ah":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 550 (+50)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 600 (+100)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 650 (+150)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 700 (+200)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 750 (+250)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "Experimental Assault Bot: Ythotha":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 70", "New HP: 73,700 (+6,700)", "New Regen Rate: 35 HP/s (+15 HP/s)"]
                    let l2: [String] =  ["Kills Required: 140", "New HP: 80,400 (+13,400)", "New Regen Rate: 50 HP/s (+30 HP/s)"]
                    let l3: [String] =  ["Kills Required: 210", "New HP: 87,100 (+20,100)", "New Regen Rate: 65 HP/s (+45 HP/s)"]
                    let l4: [String] =  ["Kills Required: 280", "New HP: 93,800 (+26,800)", "New Regen Rate: 80 HP/s (+60 HP/s)"]
                    let l5: [String] =  ["Kills Required: 350", "New HP: 100,500 (+33,500)", "New Regen Rate: 95 HP/s (+75 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Frigate: Hau-esel":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 2,200 (+200)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,400 (+400)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,600 (+600)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,800 (+800)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 3,000 (+1,000)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Submarine: Sou-istle":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 440 (+40)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 480 (+80)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 520 (+120)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 560 (+160)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 600 (+200)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Destroyer: Uashavoh":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 7,590 (+690)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 8,280 (+1,380)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 8,970 (+2,070)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 9,660 (+2,760)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 10,350 (+3,450)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Cruiser: Ithalua":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 2,640 (+240)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 2,880 (+480)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 3,120 (+720)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 3,360 (+960)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 3,600 (+1,200)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Battleship: Hauthuum":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 53,900 (+4,900)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 58,800 (+9,800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 63,700 (+14,700)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 68,600 (+19,600)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 73,500 (+24,500)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Aircraft Carrier: Iavish":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 26,400 (+2,400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 28,800 (+4,800)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 31,200 (+7,200)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 33,600 (+9,600)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 36,000 (+12,000)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Submarine Hunter: Yathsou":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
 
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            //Seraphim Weapons
            if vweName == "Weapons"
            {
            }
            //Seraphim Enhancements
            if vweName == "Enhancements"
            {
            }
        }
        
    }
    
    
    
    //TODO possibly delete
    func configureView() {
        // Update the user interface for the detail item.
        
    }
    
    
    //Sets color of cells based on faction
    func setFactionColor(factionName currentFaction: String)
    {
        
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
        
        //Set cell colors based on factionName
        setFactionColor(factionName: factionName)
     
        //Hide Floaty for this view
        Floaty.global.hide(true)
        
        
        
        
        
        //TODO possibly delete
        configureView()
        
        //Label at top of WeaponsViewController in storyboard
        navItem.title =  vweName
        
        
        
        
        //Reload table view cells to update cell color
        DispatchQueue.main.async{
            
            self.detailTableView.reloadData()
        }
    }
    
   
    
    override func viewWillDisappear(_ animated: Bool)
    {
        Floaty.global.show(true)
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
        
        //Set color of cells based on the current faction
        cell.backgroundColor = self.factionColor
        //Return the newly-created cell
        return cell
    }
    
    
    
    
    
    
    
    
    
}
