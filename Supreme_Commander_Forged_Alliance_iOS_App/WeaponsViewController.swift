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
    var seraphimColor: UIColor? = UIColor(red: 255/255, green: 229/255, blue: 0/255, alpha: 1.0)
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
                
                case "T3 Heavy Gunship: Broadsword":
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
                
                case "T3 Heavy Gunship: Broadsword":
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
                    
                    let l1: [String] =  ["Kills Required: 20", "New HP: 12,100 (+1,100)", "New Regen Rate: 13 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 40", "New HP: 13,200 (+2,200)", "New Regen Rate: 16 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 65", "New HP: 14,300 (+3,300)", "New Regen Rate: 19 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 90", "New HP: 15,400 (+4,400)", "New Regen Rate: 22 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 16,500 (+5,500)", "New Regen Rate: 25 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 25", "New HP: 16,500 (+1,500)", "New Regen Rate: 22 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 50", "New HP: 18,000 (+3,000)", "New Regen Rate: 27 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 75", "New HP: 19,500 (+4,500)", "New Regen Rate: 32 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 100", "New HP: 21,000 (+6,000)", "New Regen Rate: 37 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 125", "New HP: 22,500 (+7,500)", "New Regen Rate: 42 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                    
                case "T1 Point Defense: Erupter":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,430 (+130)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,560 (+260)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,690 (+390)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,820 (+520)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,950 (+650)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Anti-Air Turret: Seeker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 4", "New HP: 880 (+80)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 960 (+160)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,040 (+240)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,120 (+320)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,200 (+400)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Torpedo Launcher: Tide":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,787 (+162)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,950 (+325)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,112 (+487)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,275 (+650)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,437 (+812)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Tactical Missile Launcher: Serpentine":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,650 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,800 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,950 (+450)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 2,100 (+600)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 2,250 (+750)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Anti-Air Flak Artillery: Marr":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 8", "New HP: 2,695 (+245)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 2,940 (+490)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 3,185 (+735)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 3,430 (+980)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 3,675 (+1,225)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Launcher: Wave Break":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 6,710 (+610)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 7,320 (+1,220)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 7,930 (+1,830)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 8,540 (+2,440)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 9,150 (+3,050)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Point Defense: Oblivion":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 12", "New HP: 2,200 (+200)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,400 (+400)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,600 (+600)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,800 (+800)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 3,000 (+1,000)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Artillery Installation: Miasma":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 15", "New HP: 2,420 (+220)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 2,640 (+440)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 2,860 (+660)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 3,080 (+880)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 3,300 (+1,100)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Heavy Artillery Installation: Emissary":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 13,200 (+1,200)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 14,400 (+2,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 15,600 (+3,600)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 16,800 (+4,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 18,000 (+6,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Anti-Air SAM Launcher: Transcender":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 24", "New HP: 7,700 (+700)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 48", "New HP: 8,400 (+1,400)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 72", "New HP: 9,100 (+2,100)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 96", "New HP: 9,800 (+2,800)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 120", "New HP: 10,500 (+3,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Strategic Missile Launcher: Apocalypse":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 30", "New HP: 4,400 (+400)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 60", "New HP: 4,800 (+800)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 90", "New HP: 5,200 (+1,200)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 120", "New HP: 5,600 (+1,600)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 150", "New HP: 6,000 (+2,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Rapid-Fire Artillery Installation: Salvation":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 50", "New HP: 11,000 (+1,000)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 100", "New HP: 12,000 (+2,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 150", "New HP: 13,000 (+3,000)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 200", "New HP: 14,000 (+4,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 250", "New HP: 15,000 (+5,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T1 Interceptor: Conservator":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 313 (+28)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 342 (+57)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 370 (+85)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 399 (+114)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 427 (+142)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Bomber: Shimmer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 225 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 246 (+41)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 266 (+61)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 287 (+82)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 307 (+102)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Air Transport: Aluminar":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 3", "New HP: 1,732 (+157)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 1,890 (+315)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 2,047 (+472)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 2,205 (+630)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 2,362 (+787)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Gunship: Specter":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 932 (+84)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,017 (+169)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,102 (+254)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,187 (+339)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,272 (+424)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Torpedo Bomber: Skimmer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 2", "New HP: 902 (+82)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 984 (+164)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 1,066 (+246)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,148 (+328)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,230 (+410)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Combat Fighter: Swift Wind":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    
                    let l1: [String] =  ["Kills Required: 6", "New HP: 880 (+80)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 960 (+160)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,040 (+240)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,120 (+320)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,200 (+400)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Air-Superiority Fighter: Corona":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 1,925 (+175)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 2,100 (+350)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 2,275 (+525)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 2,450 (+700)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 2,625 (+875)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Bomber: Shocker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,180 (+380)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,560 (+760)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 4,940 (+1,140)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,320 (+1,520)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 5,700 (+1,900)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 AA Gunship: Restorer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 15", "New HP: 6,600 (+600)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 7,200 (+1,200)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 7,800 (+1,800)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 8,400 (+2,400)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 9,000 (+3,000)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Torpedo Bomber: Solace":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 4,125 (+375)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 4,500 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 4,875 (+1,125)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 5,250 (+1,500)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 5,625 (+1,875)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "Experimental Aircraft Carrier: CZAR":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 40", "New HP: 63,800 (+5,800)", "New Regen Rate: 25 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 80", "New HP: 69,600 (+11,600)", "New Regen Rate: 35 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 120", "New HP: 75,400 (+17,400)", "New Regen Rate: 45 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 160", "New HP: 81,200 (+23,200)", "New Regen Rate: 55 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 200", "New HP: 87,000 (+29,000)", "New Regen Rate: 65 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Land Scout: Spirit":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 22 (+2)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 24 (+4)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 26 (+6)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 28 (+8)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 30 (+10)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Light Artillery: Fervor":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 165 (+15)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 180 (+30)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 195 (+45)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 210 (+60)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 225 (+75)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Mobile Anti-Air Gun: Thistle":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 220 (+20)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 240 (+40)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 260 (+60)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 280 (+80)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 300 (+100)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Light Assault Bot: Flare":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 77 (+7)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 84 (+14)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 91 (+21)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 98 (+28)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 105 (+35)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Light Tank: Aurora":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 154 (+14)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 168 (+28)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 182 (+42)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 196 (+56)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 210 (+70)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T2 Mobile Missile Launcher: Evensong":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 3", "New HP: 825 (+75)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 6", "New HP: 900 (+150)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 9", "New HP: 975 (+225)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 12", "New HP: 1,050 (+300)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 15", "New HP: 1,125 (+375)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Heavy Tank: Obsidian":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,375 (+125)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,500 (+250)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,625 (+375)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 35", "New HP: 1,750 (+500)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 42", "New HP: 1,875 (+625)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Mobile AA Flak Artillery: Ascendant":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 1,100 (+100)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 1,200 (+200)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 1,300 (+300)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 1,400 (+400)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 1,500 (+500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Assault Tank: Blaze":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,155 (+105)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 1,260 (+210)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 1,365 (+315)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 1,470 (+420)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 1,575 (+525)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "T3 Shield Disruptor: Absolver":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 1,320 (+120)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,440 (+240)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,560 (+360)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,680 (+480)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,800 (+600)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Heavy Assault Bot: Harbinger Mark IV":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 15", "New HP: 5,060 (+460)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 30", "New HP: 5,520 (+920)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 45", "New HP: 5,980 (+1,380)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 60", "New HP: 6,440 (+1,840)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 75", "New HP: 6,900 (+2,300)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Mobile Heavy Artillery: Serenity":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 9", "New HP: 990 (+90)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 18", "New HP: 1,080 (+180)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 27", "New HP: 1,170 (+270)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 36", "New HP: 1,260 (+360)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 45", "New HP: 1,350 (+450)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Sniper Bot: Sprite Striker":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 495 (+45)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 540 (+90)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 585 (+135)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 630 (+180)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 675 (+225)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]

                    
                case "Experimental Assault Bot: Galactic Colossus":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 90", "New HP: 109,998 (+9,999)", "New Regen Rate: 20 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 180", "New HP: 199,998 (+19,999)", "New Regen Rate: 30 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 270", "New HP: 129,998 (+29,999)", "New Regen Rate: 40 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 360", "New HP: 139,998 (+39,999)", "New Regen Rate: 50 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 450", "New HP: 149,998 (+49,999)", "New Regen Rate: 60 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                    
                case "T1 Air Attack Boat: Shard":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 2", "New HP: 825 (+75)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 4", "New HP: 900 (+150)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 6", "New HP: 975 (+225)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 8", "New HP: 1,050 (+300)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 10", "New HP: 1,125 (+375)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Frigate: Beacon Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 6", "New HP: 1,980 (+180)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 12", "New HP: 2,160 (+360)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 18", "New HP: 2,340 (+540)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 24", "New HP: 2,520 (+720)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 30", "New HP: 2,700 (+900)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T1 Attack Submarine: Sylph":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 4", "New HP: 605 (+55)", "New Regen Rate: 1 HP/s (+1 HP/s)"]
                    let l2: [String] =  ["Kills Required: 8", "New HP: 660 (+110)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l3: [String] =  ["Kills Required: 12", "New HP: 715 (+165)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l4: [String] =  ["Kills Required: 16", "New HP: 770 (+220)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l5: [String] =  ["Kills Required: 20", "New HP: 825 (+275)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Destroyer: Exodus Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 8,250 (+750)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 9,000 (+1,500)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 9,750 (+2,250)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 10,500 (+3,000)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 11,250 (+3,750)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Cruiser: Infinity Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 16", "New HP: 3,575 (+325)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 32", "New HP: 3,900 (+650)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 48", "New HP: 4,225 (+975)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 64", "New HP: 4,550 (+1,300)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 80", "New HP: 4,875 (+1,625)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T2 Submarine Hunter: Vesper":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 8", "New HP: 1,980 (+180)", "New Regen Rate: 2 HP/s (+2 HP/s)"]
                    let l2: [String] =  ["Kills Required: 16", "New HP: 2,160 (+360)", "New Regen Rate: 4 HP/s (+4 HP/s)"]
                    let l3: [String] =  ["Kills Required: 24", "New HP: 2,340 (+540)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l4: [String] =  ["Kills Required: 32", "New HP: 2,520 (+720)", "New Regen Rate: 8 HP/s (+8 HP/s)"]
                    let l5: [String] =  ["Kills Required: 40", "New HP: 2,700 (+900)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Battleship: Omen Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 52,800 (+4,800)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 57,600 (+9,600)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 62,400 (+14,400)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 67,200 (+19,200)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 72,000 (+24,000)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Aircraft Carrier: Keefer Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 24,200 (+2,200)", "New Regen Rate: 5 HP/s (+5 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 26,400 (+4,400)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 28,600 (+6,600)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 30,800 (+8,800)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 33,000 (+11,000)", "New Regen Rate: 25 HP/s (+25 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Strategic Missile Submarine: Silencer":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 12", "New HP: 4,125 (+375)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 24", "New HP: 4,500 (+750)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 36", "New HP: 4,875 (+1,125)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 48", "New HP: 5,250 (+1,500)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 60", "New HP: 5,625 (+1,875)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                case "T3 Missile Ship: Torrent Class":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 16,500 (+1,500)", "New Regen Rate: 3 HP/s (+3 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 18,000 (+3,000)", "New Regen Rate: 6 HP/s (+6 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 19,500 (+4,500)", "New Regen Rate: 9 HP/s (+9 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 21,000 (+6,000)", "New Regen Rate: 12 HP/s (+12 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 22,500 (+7,500)", "New Regen Rate: 15 HP/s (+15 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                case "Experimental Battleship: Tempest":
                    unitSectionNames = ["Level 1", "Level 2", "Level 3", "Level 4", "Level 5"]
                    let l1: [String] =  ["Kills Required: 32", "New HP: 66,000 (+6,000)", "New Regen Rate: 10 HP/s (+10 HP/s)"]
                    let l2: [String] =  ["Kills Required: 64", "New HP: 72,000 (+12,000)", "New Regen Rate: 20 HP/s (+20 HP/s)"]
                    let l3: [String] =  ["Kills Required: 96", "New HP: 78,000 (+18,000)", "New Regen Rate: 30 HP/s (+30 HP/s)"]
                    let l4: [String] =  ["Kills Required: 128", "New HP: 84,000 (+24,000)", "New Regen Rate: 40 HP/s (+40 HP/s)"]
                    let l5: [String] =  ["Kills Required: 160", "New HP: 90,000 (+30,000)", "New Regen Rate: 50 HP/s (+50 HP/s)"]
                    unitSectionCells = [l1, l2, l3, l4, l5]
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
            }
            //Aeon Weapons
            if vweName == "Weapons"
            {
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Quantum Disruptor", "Overcharge Cannon", "Chrono Dampener", "Death Nuke", "Teleport in"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 100", "Range: 1-22",
                                         "Projectile: 100 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 project per second", "Firing Tolerance: 2°"]
                    
                    let w2: [String] =  ["Type: Direct Fire, Overcharge", "DPS: 3,636.36", "Range: 0-22", "Area Damage Radius: 2.5", "Projectile: 12,000 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 3.3 seconds", "Energy Required: 5,000 (-5,000)", "Firing Tolerance: 2°"]
                    
                    let w3: [String] =  ["Type: Direct Fire, Normal", "DPS: 0.2", "Range: 0-35", "Area Damage Radius: 0", "Projectile: 1 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 5 seconds", "Energy Required: 200 (-200)", "Firing Tolerance: 360°"]
                    
                    let w4: [String] =  ["Type: Death, Deathnuke", "Nuke Inner-Ring Damage: 2,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    
                    let w5: [String] =  ["Type: Teleport, Normal", "DPS: 100", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage" , "Fire Cycle: 1 projectile per second"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Reacton Cannon", "Death Nuke", "Teleport in"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 300", "Range: 1-30", "Projectile: 300 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 1,000", "Area Damage Radius: 10", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Teleport, Normal", "DPS: 100", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage" , "Fire Cycle: 1 projectile per second"]
                    unitSectionCells = [w1, w2, w3]
                    
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
                    
                case "T2 Power Generator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,500", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T3 Power Generator: Quantum Reactor":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 8,000", "Area Damage Radius: 10"]
                    unitSectionCells = [w1]
                    
                case "T3 Mass Fabricator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 5,000", "Area Damage Radius: 14"]
                    unitSectionCells = [w1]
                    
                case "Experimental Resource Generator: Paragon":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Nuke Damage: 35,000", "Nuke Radius: 25", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                    
                    
                case "T1 Point Defense: Erupter":
                    unitSectionNames = ["Gravitron Projector"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 166.67", "Range: 0-26", "Projectile: 50 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Anti-Air Turret: Seeker":
                    unitSectionNames = ["Sonic Pulse Battery"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 70", "Range: 0-44", "Projectile: 14 damage", "Muzzle Velocity: 45", "Fire Cycle: 3 times 1 projectile every 0.1s", "Reload: 0.4 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Torpedo Launcher: Tide":
                    unitSectionNames = ["Chrono Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-50", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s", "Reload: 3.3 seconds", "Firing Tolerance: 30°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Launcher: Serpentine":
                    unitSectionNames = ["Serpentine Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 15-256", "Area Damage Radius: 2", "Tactical Missile: 6,000 damage", "Muzzle Velocity: 5", "Lifetime: 30","Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Anti-Air Flak Artillery: Marr":
                    unitSectionNames = ["Fizz Launcher"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 71.43", "Range: 0-50", "Area Damage Radius: 3", "Projectile: 150 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 2.1 seconds", "Firing Randomness: 1.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Torpedo Launcher: Wave Break":
                    unitSectionNames = ["Chrono Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 150", "Range: 0-60", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 4 times 1 projectile every 0.5s", "Reload: 2.5 seconds", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T2 Point Defense: Oblivion":
                    unitSectionNames = ["Oblivion Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 150", "Range: 0-50", "Area Damage Radius: 2",  "Projectile: 600 damage", "Muzzle Velocity: 45", "Fire Cycle: 1 projectile every 4 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Artillery Installation: Miasma":
                    unitSectionNames = ["Miasma Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 143.75", "Range: 5-128", "Area Damage Radius: 2",  "Projectile: 5 times 575 dmg every 0.1s", "Muzzle Velocity: 26.13", "Fire Cycle: 1 projectile every 20 seconds", "Energy Required: 1,450 (-145)", "Firing Randomness: 1.5°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T3 Heavy Artillery Installation: Emissary":
                    unitSectionNames = ["Sonance Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 600", "Range: 150-900", "Area Damage Radius: 5",  "Projectile: 2 times 6,000 damage every 0.2s", "Muzzle Velocity: 65", "Lifetime: 120", "Fire Cycle: 1 projectile every 20 seconds", "Energy Required: 8,500 (-4,250)", "Firing Randomness: 0.35°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Anti-Air SAM Launcher: Transcender":
                    unitSectionNames = ["Zealot AA Missile"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-60", "Area Damage Radius: 1.5",  "Projectile: 600 damage", "Muzzle Velocity: 45", "Lifetime: 5", "Fire Cycle: 2 times 1 projectile every 0.5s", "Reload: 3.1 seconds", "Firing Tolerance: 10°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Launcher: Apocalypse":
                    unitSectionNames = ["Quantum Warhead", "Death Weapon"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 70,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 6"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Rapid-Fire Artillery Installation: Salvation":
                    unitSectionNames = ["Rapid-Fire Artillery Cannon"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 2,554.84", "Range: 175-1,800", "Area Damage Radius: 2",  "Projectile: 220 damage", "Muzzle Velocity: 98", "Lifetime: 50", "Fire Cycle: 36 projectiles every 3.1s", "Energy Required: 15,000 (-7,500)", "Firing Randomness: 0.25°", "Firing Tolerance: 0.01°"]
                    unitSectionCells = [w1]
                    
                    
                case "T2 Tactical Missile Defense: Volcano":
                    unitSectionNames = ["Will O Wisp Anti Missile"]
                    let w1: [String] =  ["Type: Defense, Normal", "DPS: 9.68", "Range: 0-30", "Projectile: 30 damage", "Muzzle Velocity: 5", "Lifetime: 4", "Fire Cycle: 1 projectile every 3.1 seconds", "Firing Tolerance: 360°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Defense: Patron":
                    unitSectionNames = ["Saint Anti Nuke"]
                    let w1: [String] =  ["Type: Defense, Normal", "Range: 0-90", "Tactile Missile: 30 damage", "Muzzle Velocity: 90", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T3 Sonar Platform":
                    unitSectionNames = ["Quasar Anti Torpedo"]
                    let w1: [String] =  ["Type: Defense, Normal", "DPS: 0.15", "Range: 0-32", "Projectile: 1 damage", "Muzzle Velocity: 30", "Lifetime: 1.5", "Fire Cycle: 1 projectile every 6.7s", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Air Scout: Mirage":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 10", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Interceptor: Conservator":
                    unitSectionNames = ["Sonic Pulse Battery (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 24", "Range: 0-25", "Projectile: 8 damage", "Muzzle Velocity: 120", "Fire Cycle: 3 projectiles every second"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Bomber: Shimmer":
                    unitSectionNames = ["Graviton Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 50", "Range: 0-40", "Area Damage Radius: 4", "Projectile: 200 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 4 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Light Air Transport: Chariot":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Guided Missile: Mercy":
                    unitSectionNames = ["Kamikaze", "Air Crash"]
                    let w1: [String] =  ["Type: Kamikaze, Normal", "Damage: 2,400", "Range: 0-25", "Area Damage Radius: 3", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 3", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Air Transport: Aluminar":
                    unitSectionNames = ["Sonic Pulse Battery (4)"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 7.2", "Range 0-20", "Projectile: 6 damage", "Muzzle Velocity: 35", "Fire Cycle: 3 projectiles every 2.5 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Gunship: Specter":
                    unitSectionNames = ["Quad Light Laser", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 65", "Range 0-22", "Projectile: 13 damage", "Muzzle Velocity: 40", "Fire Cycle: 4 times 1 projectile every 0.1 seconds", "Reload: 0.5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Torpedo Bomber: Skimmer":
                    unitSectionNames = ["Harmonic Depth Charge", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 60", "Range 4-42", "Projectile: 375 damage", "Muzzle Velocity: 14", "Lifetime: 20", "Fire Cycle: 2 times 1 projectile every 1.7s", "Reload: 10.8 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 150", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Combat Fighter: Swift Wind":
                    unitSectionNames = ["Light Displacement Missile", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 150", "Range 0-30", "Area Damage Radius: 0", "Projectile: 50 damage", "Muzzle Velocity: 120", "Lifetime: 0.6", "Fire Cycle: 3 times 1 projectile every 0.1s", "Reload: 0.8 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Spy Plane: Seer":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Air-Superiority Fighter: Corona":
                    unitSectionNames = ["Displacement Cannon", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 405", "Range: 0-30", "Projectile: 405 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Strategic Bomber: Shocker":
                    unitSectionNames = ["Quark Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 690", "Range: 0-90", "Area Damage Radius: 4", "Projectile: 3,450 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 500", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 AA Gunship: Restorer":
                    unitSectionNames = ["Quad Light Laser", "Zealot AA Missile (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 120", "Range: 0-25", "Projectile: 24 damage", "Muzzle Velocity: 40", "Fire Cycle: 4 times 1 projectile every 0.1s", "Reload: 0.5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 71", "Range: 0-60", "Projectile: 71 damage", "Muzzle Velocity: 35", "Lifetime: 4", "Fire Cycle: 1 projectile per seconds", "Firing Tolerance: 180°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T3 Torpedo Bomber: Solace":
                    unitSectionNames = ["Torpedo Cluster", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 160", "Range: 4-42", "Projectile: 500 damage", "Muzzle Velocity: 14", "Lifetime: 30", "Fire Cycle: 4 times 1 projectile every 0.3s", "Reload: 11.6 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 150", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "Experimental Aircraft Carrier: CZAR":
                    unitSectionNames = ["Quantum Beam Generator", "Zealot AA Missile (4)", "Harmonic Depth Charge (2)", "Fizz Launcher (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire Experimental,CzarBeam # Normal", "DPS: 3,330", "Range: 0-30", "Area Damage Radius: 4", "Continuous Beam: 333 damage", "Firing Tolerance: 30°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 230.77", "Range: 0-64", "Projectile: 300 damage", "Muzzle Velocity: 50", "Lifetime: 4", "Fire Cycle: 1 projectile every 1.3 seconds", "Firing Tolerance: 10°"]
                    let w3: [String] =  ["Type: Anti-Navy, Normal", "DPS: 37.5", "Range: 0-50", "Area Damage Radius: 1.5°", "Projectile: 150 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 4 seconds", "Firing Randomness: 1°", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Anti-Air, Normal", "DPS: 960", "Range: 0-44", "Area Damage Radius: 3°", "Projectile: 240 damage", "Muzzle Velocity: 20", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Randomness: 3°", "Firing Tolerance: 3°"]
                    let w5: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 15"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                case "T1 Land Scout: Spirit":
                    unitSectionNames = ["Light Laser"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 1", "Range: 0-25", "Projectile: 2 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Light Artillery: Fervor":
                    unitSectionNames = ["Concussion Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 100", "Range: 5-30", "Area Damage Radius: 0.5", "Projectile: 200 damage", "Muzzle Velocity: 14", "Fire Cycle: 1 projectile every 2 seconds", "Firing Randomness: 0.35°", "Firing Tolerance: 3°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Anti-Air Gun: Thistle":
                    unitSectionNames = ["Sonic Pulse Battery"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 15", "Range: 0-32", "Projectile: 5 damage", "Muzzle Velocity: 45", "Fire Cycle: 3 times 1 projectile every 0.1s", "Reload: 0.8 seconds", "Firing Randomness: 0.2°", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Light Assault Bot: Flare":
                    unitSectionNames = ["Sonic Pulsar"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 21", "Range: 0-14", "Projectile: 7 damage", "Muzzle Velocity: 25", "Fire Cycle: 3 projectiles every second", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Light Tank: Aurora":
                    unitSectionNames = ["Disruptor Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 26.67", "Range: 0-26", "Area Damage Radius: 0", "Projectile: 40 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 1.5 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    

                case "T2 Mobile Missile Launcher: Evensong":
                    unitSectionNames = ["Serpentine Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 60", "Range: 3-60", "Area Damage Radius: 1", "Projectile: 600 damage", "Muzzle Velocity: 3", "Lifetime: 25", "Fire Cycle: 1 projectile every 10 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                    
                case "T2 Heavy Tank: Obsidian":
                    unitSectionNames = ["Quantum Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 120", "Range: 0-20", "Area Damage Radius: 0", "Projectile: 480 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 4 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T2 Mobile AA Flak Artillery: Ascendant":
                    unitSectionNames = ["Fizz Launcher"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 144", "Range: 0-40", "Area Damage Radius: 4", "Projectile: 72 damage", "Muzzle Velocity: 20", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                
                    
                case "T2 Assault Tank: Blaze":
                    unitSectionNames = ["Quantum Autoguns"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 50", "Range 0-23", "Area Damage Radius: 0", "Projectile: 15 damage", "Muzzle Velocity: 45", "Fire Cycle: 1 projectile every 0.3 seconds"]
                    unitSectionCells = [w1]
                    
                    
                case "T3 Shield Disruptor: Absolver":
                    unitSectionNames = ["Shield Disruptor Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 2.5", "Range 0-75", "Area Damage Radius: 0", "Projectile: 5 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                    
                case "T3 Heavy Assault Bot: Harbinger Mark IV":
                    unitSectionNames = ["High Intensity Laser"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 375", "Range 0-28", "Projectile: 300 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 0.8 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Mobile Heavy Artillery: Serenity":
                    unitSectionNames = ["Sonance Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 71.25", "Range 0-90", "Area Damage Radius: 3", "Projectile: 15 times 95 dmg every 0.5s", "Muzzle Velocity: 22", "Fire Cycle: 1 projectile every 20 seconds", "Firing Randomness: 1°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Sniper Bot: Sprite Striker":
                    unitSectionNames = ["Heavy Disruptor Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 135.71", "Range 0-70", "Area Damage Radius: 0", "Projectile: 950 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile every 7 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                    
                case "Experimental Assault Bot: Galactic Colossus":
                    unitSectionNames = ["Phason Laser", "Right Tractor Claw", "Tractor Claw", "Collossus Death"]
                    let w1: [String] =  ["Type: Direct Fire Experimental, Normal", "DPS: 2,500", "Range: 2-40", "Area Damage Radius: 0.5", "Continuous Beam: 250 damage"]
                    let w2: [String] =  ["Type: Experimental, Normal", "DPS: 0.05", "Range: 2-40", "Area Damage Radius: 0",  "Continuous Beam: 0.01 damage", "Firing Tolerance: 5°"]
                    let w3: [String] =  ["Type: Experimental, Normal", "DPS: 0.05", "Range: 2-40", "Area Damage Radius: 0", "Continuous Beam: 0.01 damage", "Firing Tolerance: 5°"]
                    let w4: [String] =  ["Type: Death, Normal", "Damage: 7,500", "Area Damage Radius: 4"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                    
                    
                    
                case "T1 Air Attack Boat: Shard":
                    unitSectionNames = ["Sonic Pulse Battery"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 35", "Range: 0-48", "Projectile: 7 damage", "Muzzle Velocity: 45", "Fire Cycle: 3 times 1 projectile every 0.1s", "Reload: 0.4 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Frigate: Beacon Class":
                    unitSectionNames = ["Quantum Cannon (2)", "Quasar Anti Torpedo"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 28", "Range: 0-31", "Area Damage Radius: 1", "Projectile: 140 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 5 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.2", "Range: 10-32", "Projectile: 2 damage", "Muzzle Velocity: 2", "Lifetime: 1", "Fire Cycle: 1 projectile every 10 seconds", "Firing Tolerance: 10°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Submarine: Sylph":
                    unitSectionNames = ["Chrono Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 37.5", "Range: 0-32", "Projectile: 75 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s","Reload: 3.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Destroyer: Exodus Class":
                    unitSectionNames = ["Oblivion Cannon", "Harmonic Depth Charge", "Chrono Torpedo", "Anti-Torpedo"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 212", "Range: 0-80", "Area Damage Radius: 1", "Projectile: 1,060 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 5 seconds", "Firing Randomness: 0.25°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Navy, Normal", "DPS: 106.06", "Range: 0-45", "Projectile: 350 damage", "Muzzle Velocity: 15", "Lifetime: 15", "Fire Cycle: 1 projectile every 3.3 seconds", "Firing Randomness: 1°", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-45", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.9s", "Reload: 3.1 seconds", "Firing Randomness: 1°", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 1.05", "Range: 15-45", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 4", "Fire Cycle: 2 projectiles every 3.8 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "T2 Cruiser: Infinity Class":
                    unitSectionNames = ["Quantum Cannon", "Zealot AA Missile (2)", "Will O Wisp Anti Missile"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 70", "Range: 0-60", "Area Damage Radius: 1", "Projectile: 140 damage", "Muzzle Velocity: 40", "Fire Cycle: 2 projectiles every 4 seconds", "Firing Randomness: 0.5°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 375", "Range: 0-75", "Projectile: 375 damage", "Muzzle Velocity: 40", "Lifetime: 6", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 1°"]
                    let w3: [String] =  ["Type: Defense, Normal", "DPS: 15", "Range: 0-30", "Projectile: 30 damage", "Muzzle Velocity: 5", "Lifetime: 4", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 360°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T2 Submarine Hunter: Vesper":
                    unitSectionNames = ["Chrono Torpedo", "Quasar Anti Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 90", "Range: 0-45", "Projectile: 90 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 4 times 1 projectile every 0.3s","Reload: 3.1 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.52", "Range: 0-32", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 4", "Fire Cycle: 2 projectiles every 7.7 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Battleship: Omen Class":
                    unitSectionNames = ["Oblivion Cannon (3)", "Will O Wisp Anti Missile"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 169.49", "Range: 0-100", "Area Damage Radius: 2", "Projectile: 1,000 damage", "Muzzle Velocity: 50", "Fire Cycle: 1 projectile every 5.9 seconds", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 15", "Range: 0-50", "Projectile: 30 damage", "Muzzle Velocity: 5", "Lifetime: 6", "Fire Cycle: 2 times 1 projectile every 2.2s", "Reload: 1.8 seconds", "Firing Tolerance: 360°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Aircraft Carrier: Keefer Class":
                    unitSectionNames = ["Zealot AA Missile (2)"]
                    let w1: [String] =  ["Type: Anti Air, Normal", "DPS: 300", "Range: 0-100", "Projectile: 300 damage", "Muzzle Velocity: 30", "Lifetime: 6", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 50°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Submarine: Silencer":
                    unitSectionNames = ["Long Range Cruise Missile", "Nuclear Warhead"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 200", "Range: 15-256", "Area Damage Radius: 3", "Projectile: 2,000 damage", "Muzzle Velocity: 5", "Lifetime: 50", "Fire Cycle: 1 projectile every 10 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Missile, Normal", "Range: 128-410", "Area Damage Radius: 0", "Nuke Inner-Ring Damage: 22,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 3,000", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Missile Ship: Torrent Class":
                    unitSectionNames = ["Serpentine Tactical Missile Rack (2)", "Quasar Anti-Torpedo (4)"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 200", "Range: 25-200", "Area Damage Radius: 2", "Projectile: 800 damage", "Muzzle Velocity: 5", "Lifetime: 25", "Fire Cycle: 5 times 1 projectile every 0.9s", "Reload: 16.4 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.79", "Range: 15-45", "Projectile: 3 damage", "Muzzle Velocity: 80", "Lifetime: 4", "Fire Cycle: 1 projectile every 3.8 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "Experimental Battleship: Tempest":
                    unitSectionNames = ["Oblivion Cannon", "Harmonic Depth Charge", "Quasar Anti-Torpedo"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 800", "Range: 0-150", "Area Damage Radius: 5", "Projectile: 8,000 damage", "Muzzle Velocity: 28", "Lifetime: 10", "Fire Cycle: 1 projectile every 10 seconds", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Navy, Normal", "DPS: 420", "Range: 0-80", "Area Damage Radius: 1.5", "Projectile: 350 damage", "Muzzle Velocity: 20", "Lifetime: 10", "Fire Cycle:6 projectiles every 5 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Defense, Normal", "DPS: 6", "Range: 15-45", "Projectile: 3 damage", "Muzzle Velocity: 80", "Lifetime: 1.5", "Fire Cycle: 2 projectiles every second", "Firing Tolerance: 180°"]
                    unitSectionCells = [w1, w2, w3]
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }

            }
            //Aeon Enhancements
            if vweName == "Enhancements"
            {
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Tech 2 Engineering Suite", "Chrono Dampener", "Enhanced Quantum Disruptor", "Enhanced Sensor System", "Quantum Accelerator", "Resource Allocation System", "Advanced Resource Allocation System", "Personal Shield Generator", "Heavy Personal Shield Generator", "Tech 3 Engineering Suite"]
                    
                    let e1: [String] =  ["Section: LCH", "Mass: 720", "Energy: 18,000", "Build Time: 900", "New HP: 14,000 (+3,000)", "New Regen Rate: 30 HP/s (+20 HP/s)", "New Build Rate: 42"]
                    let e2: [String] =  ["Section: Back", "Mass: 1,750", "Energy: 52,500", "Build Time: 1,225"]
                    let e3: [String] =  ["Section: LCH", "Mass: 500", "Energy: 15,000", "Build Time: 500", "New Weapons Range: 35"]
                    let e4: [String] =  ["Section: RCH", "Mass: 400", "Energy: 10,000", "Build Time: 500", "New Omni Radius: 100", "New Vision Radius: 50"]
                    let e5: [String] =  ["Section: RCH", "Mass: 500", "Energy: 15,000", "Build Time: 500", "New Rate of Fire: 2"]
                    let e6: [String] =  ["Section: Back", "Mass: 5,000 (+18)", "Energy: 150,000 (+2,700)", "Build Time: 1,400"]
                    let e7: [String] =  ["Section: Back", "Mass: 5,000 (+36)", "Energy: 150,000 (+5,400)", "Build Time: 1,400"]
                    let e8: [String] =  ["Section: Back", "Mass: 1,500", "Energy: 93,750 (-250)", "Build Time: 1,750", "Shield HP: 29,000", "Shield Size: 0", "Shield Regen Rate: 37 HP/s", "Shield Recharge Time: 160s", "Shield Recharge Rate: 181 HP/s"]
                    let e9: [String] =  ["Section: Back", "Mass: 4,500", "Energy: 1,000,000 (-500)", "Build Time: 3,500", "Shield HP: 44,000", "Shield Size: 0", "Shield Regen Rate: 44 HP/s", "Shield Recharge Time: 200s", "Shield Recharge Rate: 220 HP/s"]
                    let e10: [String] =  ["Section: LCH", "Mass: 2,400", "Energy: 50,000", "Build Time: 8,400", "New HP: 17,000 (+6,000)", "New Regen Rate: 45 HP/s (+35 HP/s)", "New Build Rate: 126"]
                    let e11: [String] =  ["Section: Back", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 4,200"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11]
                    
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Rapid Fabricator", "Resource Allocation System", "Sacrificial System", "Personal Shield Generator", "Heavy Personal Shield Generator", "Reacton Refactor", "Nano-Repair System", "Personal Teleporter"]
                    
                    let e1: [String] =  ["Section: LCH","Mass: 800", "Energy: 50,000", "Build Time: 4,200", "New Build Rate: 98"]
                    let e2: [String] =  ["Section: RCH", "Mass: 4,500 (+10)", "Energy: 60,000 (+1,000)", "Build Time: 8,400"]
                    let e3: [String] =  ["Section: LCH", "Mass: 150", "Energy: 2,500", "Build Time: 700"]
                    let e4: [String] =  ["Section: Back", "Mass: 1,200", "Energy: 60,000 (-300)", "Build Time: 5,040", "Shield HP: 20,000", "Shield Size: 0", "Shield Regen Rate: 40 HP/s", "Shield Recharge Time: 190s", "Shield Recharge Rate: 105 HP/s"]
                    let e5: [String] =  ["Section: Back", "Mass: 1,500", "Energy: 100,000 (-600)", "Build Time: 7,000", "Shield HP: 35,000", "Shield Size: 0", "Shield Regen Rate: 120 HP/s", "Shield Recharge Time: 180s", "Shield Recharge Rate: 194 HP/s"]
                    let e6: [String] =  ["Section: RCH", "Mass: 1,250", "Energy: 36,000", "Build Time: 5,040", "New Damage Radius: 3.5", "New Weapons Range: 40"]
                    let e7: [String] =  ["Section: Back", "Mass: 1,500", "Energy: 75,000", "Build Time: 6,720", "New Regen Rate: 317 HP/s (+300 HP/s)"]
                    let e8: [String] =  ["Section: Back", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 21,000"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8]
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                

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
                    
                case "T3 Heavy Gunship: Broadsword":
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
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Molecular Ripper Cannon", "Overcharge Cannon", "Death Nuke", "Heavy  Microwave Laser", "Nanite Torpedo", "Teleport in"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 100", "Range: 1-22",
                                         "Projectile: 100 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 project per second", "Firing Tolerance: 2°"]
                    
                    let w2: [String] =  ["Type: Direct Fire, Overcharge", "DPS: 3,636.36", "Range: 0-22", "Area Damage Radius: 2.5", "Projectile: 12,000 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 3.3 seconds", "Energy Required: 5,000 (-5,000)", "Firing Tolerance: 2°"]
                    
                    let w3: [String] =  ["Type: Death, Deathnuke", "Nuke Inner-Ring Damage: 2,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    
                    let w4: [String] =  ["Type: Direct Fire Experimental, Normal", "DPS: 4,000", "Range: 0-22", "Area Damage Radius: 0.5", "Continuous Beam: 400 damage"]
                    
                    let w5: [String] =  ["Type: Anti Navy, Normal", "DPS: 250", "Range: 0-60", "Projectile: 250 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 4 times 1 projectile every 0.7s", "Reload: 1.9 seconds", "Firing Tolerance: 2°"]
                    
                    let w6: [String] =  ["Type: Teleport, Normal", "DPS: 100", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage" , "Fire Cycle: 4 times 1 projectile every 0.7s", "Reload: 1.9 seconds"]
                    unitSectionCells = [w1, w2, w3, w4, w5, w6]
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Disintegrator Pulse Laser", "Nanite Missile System", "Death Nuke"]
                    
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 300", "Range: 1-25", "Projectile: 300 damage", "Muzzle Velocity: 18", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2"]
                    let w2: [String] =  ["Type: Anti Air, Normal", "DPS: 272.73", "Range: 0-60", "Area Damage Radius: 1.5", "Projectile: 300 damage", "Muzzle Velocity: 30", "Lifetime: 5", "Fire Cycle: 3 times 1 projectile every 0.3s", "Reload: 2.7 seconds", "Firing Tolerance: 50"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 1,000", "Area Damage Radius: 10", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
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
                    
                case "T2 Power Generator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,500", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T3 Power Generator: Ion Reactor":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 8,000", "Area Damage Radius: 10"]
                    unitSectionCells = [w1]
                    
                case "T3 Mass Fabricator":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 5,000", "Area Damage Radius: 14"]
                    unitSectionCells = [w1]
                    
                case "T1 Point Defense: Auto Gun":
                    unitSectionNames = ["Light Pulse Laser"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 166.67", "Range: 0-26", "Projectile: 50 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Anti-Air Turret: Tracer":
                    unitSectionNames = ["Electron Autocannon"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 70", "Range: 0-44", "Projectile: 14 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 0.4 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Torpedo Launcher: Scuttle":
                    unitSectionNames = ["Nanite Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 93.75", "Range: 0-50", "Projectile: 5 times 25 dmg every 0.1s", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 3 times 1 projectile every 0.5s", "Reload: 3 seconds", "Firing Tolerance: 30°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Launcher: TML-4":
                    unitSectionNames = ["Loa Tactical Missile"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 15-256", "Area Damage Radius: 2", "Tactical Missile: 6,000 damage", "Muzzle Velocity: 10", "Lifetime: 30","Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Anti-Air Flak Artillery: Burst Master":
                    unitSectionNames = ["Electron Flank"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 152", "Range: 0-44", "Area Damage Radius: 5", "Projectile: 38 damage", "Muzzle Velocity: 20", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Randomness: 4°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Torpedo Launcher: Nanite Torpedo Array":
                    unitSectionNames = ["Nanite Torpedo"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 187.5", "Range: 0-60", "Projectile: 5 times 50 dmg every 0.05s", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 3 times 1 projectile every 0.5s", "Reload: 3 seconds", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T2 Point Defense: Cerberus":
                    unitSectionNames = ["Particle Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 100", "Range: 0-50", "Projectile: 10 damage", "Muzzle Velocity: 100", "Fire Cycle: 3 projectiles every 0.3 seconds","Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Artillery Installation: Gunther":
                    unitSectionNames = ["Resonance Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 87.5", "Range: 5-128", "Area Damage Radius: 4", "Projectile: 1,750 damage", "Muzzle Velocity: 26.13", "Fire Cycle: 1 projectile every 20 seconds", "Energy Required: 1,150 (-115)", "Firing Randomness: 2.5°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T3 Heavy Artillery Installation: Disruptor":
                    unitSectionNames = ["Proton Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 460", "Range: 150-700", "Area Damage Radius: 9", "Projectile: 4,600 damage", "Muzzle Velocity: 60", "Lifetime: 120", "Fire Cycle: 1 projectile every 10 seconds", "Energy Required: 7,000 (-3,500)", "Firing Randomness: 0.75°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Anti-Air SAM Launcher: Myrmidon":
                    unitSectionNames = ["Nanite Missile Launcher"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-60", "Area Damage Radius: 1.5",  "Projectile: 300 damage", "Muzzle Velocity: 45", "Lifetime: 4", "Fire Cycle: 4 times 1 projectile every 0.2s", "Reload: 3 seconds", "Firing Tolerance: 50°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Launcher: Liberator":
                    unitSectionNames = ["EMP Flux Warhead", "Death Weapons"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 70,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 6"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Torpedo Ambushing System: HARMS":
                    unitSectionNames = ["Kril Torpedo"]
                    let w1: [String] =  ["Type: Anti Navy, Normal", "DPS: 375", "Range: 0-80", "Projectile: 5 times 50 dmg every 0.05s", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 6 times 1 projectile every 0.5s", "Reload: 1.5 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                    
                case "T2 Tactical Missile Defense: Zapper":
                    unitSectionNames = ["Zapper Anti Missile"]
                    let w1: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-30", "Beam: 1 damage", "Fire Cycle: 1 beam every 2 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Defense: Guardian":
                    unitSectionNames = ["EMP Anti-Nuke"]
                    let w1: [String] =  ["Type: Defense, Normal", "Range: 0-90", "Tactile Missile: 30 damage", "Muzzle Velocity: 90", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                    
                case "T1 Air Scout: Flying Eyes":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 10", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Interceptor: Prowler":
                    unitSectionNames = ["Electron Autocannon (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 24", "Range: 0-25", "Projectile: 8 damage", "Muzzle Velocity: 120", "Fire Cycle: 3 projectiles every second", "Firing Tolerance: 0.1°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Bomber: Zeus":
                    unitSectionNames = ["Neutron Cluster Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 75", "Range: 0-40", "Area Damage Radius: 3", "Projectile: 50 damage", "Muzzle Velocity: 0", "Fire Cycle: 6 times 1 projectile every 0.2s", "Reload: 3.5 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Light Air Transport: Skyhook":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Light Gunship: Jester":
                    unitSectionNames = ["Heavy Laser Autogun", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 53.33", "Projectile: 16 damage", "Muzzle Velocity: 40", "Fire Cycle: 1 projectile every 0.3 seconds","Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                    
                case "T2 Fighter/Bomber: Corsair":
                    unitSectionNames = ["Nanite Missile System", "Corsair Missile Launcher", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 54.29", "Range: 0-30", "Area Damage Radius: 0", "Projectile: 38 damage", "Muzzle Velocity: 55", "Lifetime: 4", "Fire Cycle: 4 times 1 projectile every 0.2s", "Reload: 2.2 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 120", "Range: 0-40", "Area Damage Radius: 2", "Projectile: 150 damage", "Muzzle Velocity: 35", "Fire Cycle: 8 projectiles every 10s", "Firing Randomness: 0.8°", "Firing Tolerance: 6°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T2 Air Transport: Dragon Fly":
                    unitSectionNames = ["Disintegrator Pulse Laser", "Electron Autocannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 13.33", "Range 0-22", "Projectile: 4 damage", "Muzzle Velocity: 20", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 40", "Range: 0-20", "Projectile: 12 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectiles every 0.3 seconds", "Firing Tolerance: 0.2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Gunship: Renegade":
                    unitSectionNames = ["Iridium Rocket Pack", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 60", "Range 0-22", "Area Damage Radius: 3", "Projectile: 20 damage", "Muzzle Velocity: 35", "Fire Cycle: 3 times 1 projectile every 0.2s", "Reload: 0.6 seconds", "Firing Tolerance: 0.1°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Torpedo Bomber: Cormorant":
                    unitSectionNames = ["Nanite Torpedo", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 60", "Range 4-42", "Area Damage Radius: 0", "Projectile: 5 times 75 dmg every 0.1s", "Muzzle Velocity: 14", "Lifetime: 20", "Fire Cycle: 2 times 1 projectile every 1.7s", "Reload: 10.8 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 150", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Spy Plane: Spook":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Air Superiority Fighter: Gemini":
                    unitSectionNames = ["Nanite Missile System (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 200", "Range: 0-30", "Projectile: 200 damage", "Muzzle Velocity: 65", "Lifetime: 3", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Strategic Bomber: Revenant":
                    unitSectionNames = ["Neutron Bomb", "Electron Autocannon (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 550", "Range: 0-90", "Area Damage Radius: 7", "Projectile: 2,750 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 14.29", "Range: 0-44", "Projectile: 5 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 0.7 seconds"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 500", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T3 Heavy Gunship: Wailer":
                    unitSectionNames = ["Disintegrator Pulse Laser", "Nanite Missile Launcher", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 233.33", "Range: 2-25", "Projectile: 140 damage", "Muzzle Velocity: 40", "Fire Cycle: 1 projectile every 0.6 seconds", "Firing Tolerance: 0.5°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 18", "Range: 0-38", "Area Damage Radius: 0", "Projectile: 6 damage", "Muzzle Velocity: 13", "Lifetime: 2", "Fire Cycle: 3 times 1 projectile every 0.1 seconds", "Reload: 0.8 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "Experimental Gunship: Soul Ripper":
                    unitSectionNames = ["Iridium Rocket Pack (2)", "Nanite Missile System (2)", "Heavy Electron Bolter (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 285", "Range: 0-30", "Projectile: 190 damage", "Muzzle Velocity: 35", "Fire Cycle: 3 times 1 projectile every 0.2s", "Reload: 1.6 seconds", "Firing Randomness: 2°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 120", "Range: 0-60", "Projectile: 150 damage", "Muzzle Velocity: 30", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.1s", "Reload: 2.4 seconds", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Direct Fire, Normal", "DPS: 1,071.43", "Range: 0-30", "Area Damage Radius: 3", "Projectile: 375 damage", "Muzzle Velocity: 30", "Fire Cycle: 2 projectiles every 0.7 seconds", "Firing Randomness: 2°", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Death, Normal", "Damage: 5,000", "Area Damage Radius: 4", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
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
            //Cybran Enhancements
            if vweName == "Enhancements"
            {
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Tech 2 Engineering Suite", "Personal Cloaking Generator", "Microwave Accelerator", "Microwave Laser Generator", "Nanite Torpedo Launcher", "Resource Allocation System", "Personal Stealth Generator", "Tech 3 Engineering Suite", "Personal Teleporter"]
                    
                    let e1: [String] =  ["Section: LCH", "Mass: 720", "Energy: 18,000", "Build Time: 900", "New HP: 13,500 (+3,500)", "New Regen Rate: 37 HP/s (+20 HP/s)", "New Build Rate: 42"]
                    let e2: [String] =  ["Section: Back", "Mass: 6,000", "Energy: 750,000 (-3,000)", "Build Time: 4,200", "New HP: 25,000 (+15,000)"]
                    let e3: [String] =  ["Section: LCH", "Mass: 800", "Energy: 24,000", "Build Time: 800", "New Weapons Range: 30", "New Rate of Fire: 2"]
    
                    let e4: [String] =  ["Section: RCH", "Mass: 4,000", "Energy: 500,000", "Build Time: 2,800"]
                    let e5: [String] =  ["Section: RCH", "Mass: 1,500", "Energy: 37,500", "Build Time: 1,500"]
                    let e6: [String] =  ["Section: Back", "Mass: 5,000 (+12)", "Energy: 150,000 (+3,500)", "Build Time: 1,400"]
                    
                    let e7: [String] =  ["Section: Back", "Mass: 350", "Energy: 5,250 (-50)", "Build Time: 350"]
                    let e8: [String] =  ["Section: LCH", "Mass: 2,400", "Energy: 50,000", "Build Time: 8,400", "New HP: 17,000 (+7,000)", "New Regen Rate: 52 HP/s (+35 HP/s)", "New Build Rate: 126"]
                    
                    let e9: [String] =  ["Section: Back", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 4,200"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8, e9]
                    
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Personal Cloaking Generator", "EMP Burst", "Disintegrator Amplifier", "Nanite Missile System", "Resource Allocation System", "Nano-Repair System", "Personal Stealth Generator", "Rapid Fabricator"]
                    
                    let e1: [String] =  ["Section: Back", "Mass: 5,000", "Energy: 500,000 (-3,500)", "Build Time: 14,000", "New HP: 34,000 (+15,000)"]
                    let e2: [String] =  ["Section: LCH", "Mass: 1,000", "Energy: 60,000", "Build Time: 3,360"]
                    let e3: [String] =  ["Section: RCH", "Mass: 800", "Energy: 24,000", "Build Time: 3,360", "New Weapons Range: 35"]
                    
                    let e4: [String] =  ["Section: Back", "Mass: 800", "Energy: 30,000", "Build Time: 3,360"]
                    let e5: [String] =  ["Section: RCH", "Mass: 4,500 (+10)", "Energy: 60,000 (+1,000)", "Build Time: 8,400"]
                    let e6: [String] =  ["Section: Back", "Mass: 2,000", "Energy: 105,000", "Build Time: 6,720", "New Regen Rate: 425 HP/s (+400 HP/s)"]
                    
                    let e7: [String] =  ["Section: Back", "Mass: 600", "Energy: 18,000 (-100)", "Build Time: 2,240"]
                    
                    let e8: [String] =  ["Section: LCH", "Mass: 800", "Energy: 50,000", "Build Time: 4,200", "New Build Rate: 98"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8]
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }

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
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Chronotron Cannon", "Chronotron Overcharge Cannon", "Death Nuke", "Laanse Tactical Missile Launcher", "Teleport in"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 100", "Range: 2-22", "Projectile: 100 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 project per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Overcharge", "DPS: 3,636.36", "Range: 2-22", "Area Damage Radius: 2.5", "Projectile: 12,000 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 3.3 seconds", "Energy Required: 5,000 (-5,000)", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Death, Deathnuke", "Nuke Inner-Ring Damage: 2,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Missile, Normal", "Range: 5-256", "Area Damage Radius: 3", "Projectile: 6,000 damage", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 5°"]
                    let w5: [String] =  ["Type: Teleport, Normal", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage", "Fire Cycle: 1 projectile per second"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Light Chronotron Cannon", "Light Chronotron Overcharge Cannon", "Death Nuke", "Laanse Tactical Missile Launcher", "Teleport in"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 400", "Range: 1-25", "Projectile: 400 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 project per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Overcharge", "DPS: 2,400", "Range: 0-25", "Area Damage Radius: 2.5", "Projectile: 12,000 damage", "Muzzle Velocity: 22", "Fire Cycle: 1 projectile every 5 seconds", "Energy Required: 5,000 (-5,000)", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 1000", "Area Damage Radius: 10", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Missile, Normal", "Range: 5-256", "Area Damage Radius: 3", "Projectile: 6,000 damage", "Muzzle Velocity: 5", "Lifetime: 80", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 5°"]
                    let w5: [String] =  ["Type: Teleport, Normal", "Range: 0-1", "Area Damage Radius: 4", "Projectile: 100 damage", "Fire Cycle: 1 projectile per second"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                    
                case "T1 Power Generator: Uya-iya":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 250", "Area Damage Radius: 2"]
                    unitSectionCells = [w1]
                    
                case "T1 Energy Storage: Vishuyal":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,000", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T2 Mass Fabricator: Hyaliya":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 370", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T2 Power Generator: Uya-iya":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 1,500", "Area Damage Radius: 5"]
                    unitSectionCells = [w1]
                    
                case "T3 Power Generator: Uya-iya":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 8,000", "Area Damage Radius: 10"]
                    unitSectionCells = [w1]
                    
                case "T3 Mass Fabricator: Hyaliya":
                    unitSectionNames = ["Death Weapon"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 5,000", "Area Damage Radius: 14"]
                    unitSectionCells = [w1]
                    
                case "T1 Point Defense: Uttaus":
                    unitSectionNames = ["Twin Barreled Oh Spectra Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 166.67", "Range: 0-26", "Projectile: 50 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Anti-Air Defense: Ialla":
                    unitSectionNames = ["Shleo AA AutoGun"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 66.67", "Range: 0-44", "Projectile: 10 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 0.3 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Torpedo Launcher: Sou-atha":
                    unitSectionNames = ["Uall Cavitation Torpedo Launcher"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-50", "Projectile: 100 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 3 times 1 projectile every 0.4s", "Reload: 3.2 seconds", "Firing Tolerance: 85°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Launcher: Ythis":
                    unitSectionNames = ["Laanse Tacticle Missile Launcher"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 15-256", "Area Damage Radius: 2", "Tactical Missile: 6,000 damage", "Muzzle Velocity: 10", "Lifetime: 30","Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Anti-Air Flak Artillery: Sinnatha":
                    unitSectionNames = ["Olaris AA Artillery Cannon"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 142.86", "Range: 0-44", "Area Damage Radius: 3", "Projectile: 50 damage", "Muzzle Velocity: 25", "Fire Cycle: 2 projectile every 0.7 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Torpedo Launcher: Uosthu":
                    unitSectionNames = ["Heavy Cavitation Torpedo Cluster", "Ajellu Anti-Torpedo Defense"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 150.75", "Range: 0-60", "Projectile: 201 damage", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 3 times 1 projectile every 0.4s", "Reload: 3.2 seconds", "Firing Tolerance: 45°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 1", "Range: 0-32", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 7", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 10°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Point Defense: Uttaushala":
                    unitSectionNames = ["Ultrachromatic Beam Generator"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 123.75", "Range: 0-50", "Area Damage Radius: 0", "Beam: 55 dmg 9 times every 0.1s", "Fire Cycle: 1 beam every 4 seconds"]
                    unitSectionCells = [w1]
                    
                case "T2 Artillery Installation: Zthuthaam":
                    unitSectionNames = ["Zthuthaam Artillery Cannon"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 120", "Range: 5-128", "Area Damage Radius: 3",  "Projectile: 2,400 damage", "Muzzle Velocity: 26.13", "Fire Cycle: 1 projectile every 20 seconds", "Energy Required: 1,300 (-130)", "Firing Randomness: 1.5°", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T3 Heavy Artillery Installation: Hovatham":
                    unitSectionNames = ["Suthanus Heavy Artillery Cannon"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 500", "Range: 150-825", "Area Damage Radius: 7",  "Projectile: 5,000 damage", "Muzzle Velocity: 65", "Lifetime: 120", "Fire Cycle: 1 projectile every 10 seconds", "Energy Required: 7,500 (-3,750)", "Firing Randomness: 0.675°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Anti-Air Defense: Iathu-ioz":
                    unitSectionNames = ["Losaare AA Autocannon"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-60", "Area Damage Radius: 1.5",  "Projectile: 600 damage", "Muzzle Velocity: 100", "Fire Cycle: 2 times 1 projectile every 0.5s", "Reload: 3.1 seconds"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Launcher: Hastue":
                    unitSectionNames = ["Inaino Strategin Missile Launcher", "Death Weapon"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 70,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 6"]
                    unitSectionCells = [w1, w2]
                    
                    
                case "Experimental Missile Launcher: Yolona Oss":
                    unitSectionNames = ["Experimental Strategic Missile Launcher"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 1,000,001", "Nuke Inner-Ring Radius: 45", "Nuke Outer-Ring Damage: 7,500", "Nuke Outer-Ring Radius: 60", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T2 Tactical Missile Defense: Ythisatha":
                    unitSectionNames = ["Ele-athrum Tactical Missile Defense"]
                    let w1: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-30", "Projectile: 1 damage", "Muzzle Velocity: 35", "Lifetime: 3", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T3 Strategic Missile Defense: Ythisioz":
                    unitSectionNames = ["Hu Strategic Missile Defense"]
                    let w1: [String] =  ["Type: Defense, Normal", "Range: 0-90", "Tactile Missile: 30 damage", "Muzzle Velocity: 90", "Firing Tolerance: 60°"]
                    unitSectionCells = [w1]
                    
                case "T1 Air Scout: Sele-istle":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 10", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Interceptor: Ia-atha":
                    unitSectionNames = ["Shleo AA AutoGun", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 51", "Range: 0-25", "Projectile: 17 damage", "Muzzle Velocity: 120", "Fire Cycle: 3 projectiles every second"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Bomber: Sinnve":
                    unitSectionNames = ["Othe Tactical Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 62.5", "Range: 0-40", "Area Damage Radius: 4", "Projectile: 250 damage", "Muzzle Velocity: 0", "Lifetime: 30", "Fire Cycle: 1 projectile every  4 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Light Air Transport: Vish":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                    
                case "T2 Air Transport: Vishala":
                    unitSectionNames = ["Shleo AA AutoGun (2)", "Heavy Phasic Autogun", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 20", "Range 0-20", "Projectile: 5 damage", "Muzzle Velocity: 60", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 6.67", "Range: 0-22", "Projectile: 2 damage", "Muzzle Velocity: 13", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 0.1°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T2 Fighter/Bomber: Notha":
                    unitSectionNames = ["Shleo AA AutoGun (2)", "Othe Tactical Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 75", "Range: 0-30", "Projectile: 25 damage", "Muzzle Velocity: 120", "Fire Cycle: 3 projectiles every second"]
                    let w2: [String] =  ["Type: Bomb, Normal", "DPS: 117.5", "Range: 0-60", "Area Damage Radius: 3", "Projectile: 1,175 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 10 seconds", "Firing Tolerance: 6°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 25", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                
                    
                case "T2 Gunship: Vulthoo":
                    unitSectionNames = ["Heavy Phasic Autogun (2)", "Air Crash"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 30", "Range 0-22", "Projectile: 12 damage", "Muzzle Velocity: 40", "Fire Cycle: 2 times 1 projectile every 0.1s", "Reload: 0.7 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T2 Torpedo Bomber: Uosioz":
                    unitSectionNames = ["Heavy Cavitation Cluster Torpedo Launcher", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 60", "Range 4-42", "Projectile: 375 damage", "Muzzle Velocity: 14", "Lifetime: 20", "Fire Cycle: 2 times 1 projectile every 1.7s", "Reload: 10.8 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 150", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Spy Plane: Iaselen":
                    unitSectionNames = ["Air Crash"]
                    let w1: [String] =  ["Type: Death, Normal", "Damage: 100", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Air-Superiority Fighter: Iazyne":
                    unitSectionNames = ["Losaare AA Autocannon", "Air Crash"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 405", "Range: 0-30", "Projectile: 405 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 200", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Strategic Bomber: Sinntha":
                    unitSectionNames = ["Zhanasee Strategic Bomb", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 650", "Range: 0-90", "Area Damage Radius: 5", "Projectile: 3,250 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 500", "Area Damage Radius: 1", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                    
                case "Experimental Bomber: Ahwassa":
                    unitSectionNames = ["Othe Tactical Bomb", "Losaare AA Autocannon (4)", "Air Crash"]
                    let w1: [String] =  ["Type: Bomb, Normal", "DPS: 1,100", "Range: 0-90", "Area Damage Radius: 20", "Projectile: 11,000 damage", "Muzzle Velocity: 0", "Fire Cycle: 1 projectile every 10 seconds", "Firing Randomness: 3°", "Firing Tolerance: 6°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 450", "Range: 0-64", "Projectile: 450 damage", "Muzzle Velocity: 90", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 0.1°"]
                    let w3: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 8"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T1 Combat Scout: Selen":
                    unitSectionNames = ["Phasic Autogun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 13.33", "Range: 0-16", "Projectile: 4 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Light Artillery: Zthuee":
                    unitSectionNames = ["Thuntho Artillery Cannon"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 93.1", "Range: 8-30", "Area Damage Radius: 1.5", "Projectile: 45 damage", "Muzzle Velocity: 14", "Fire Cycle: 6 projectiles every 2.9 seconds", "Firing Randomness: 1°"]
                    unitSectionCells = [w1]
                    
                case "T1 Mobile Anti-Air Gun: Ia-istle":
                    unitSectionNames = ["Shleo AA Autogun"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 16", "Range: 0-32", "Projectile: 4 damage", "Muzzle Velocity: 45", "Lifetime: 10", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                case "T1 Medium Tank: Thaam":
                    unitSectionNames = ["Oh Spectra Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 24.62", "Range: 0-18", "Area Damage Radius: 0", "Projectile: 32 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 1.3 second", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                    
                case "T2 Mobile Missile Launcher: Ythisah":
                    unitSectionNames = ["Laanse Tactical Missile Launcher"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 60.45", "Range: 4-60", "Area Damage Radius: 0.5", "Projectile: 405 damage", "Muzzle Velocity: 3", "Lifetime: 25", "Fire Cycle: 1 projectile every 6.7 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1]
                    
                case "T2 Assault Bot: Ilshavoh":
                    unitSectionNames = ["Aire-au Bolter"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 116.67", "Range: 0-26", "Area Damage Radius: 0", "Projectile: 35 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T2 Hover Tank: Yenzyne":
                    unitSectionNames = ["Tau Cannon"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 50", "Range 0-20", "Area Damage Radius: 0", "Projectile: 200 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 4 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1]
                    
                case "T2 Mobile Anti-Air Cannon: Iashavoh":
                    unitSectionNames = ["Olaris AA Artillery Cannon"]
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 144", "Range 0-40", "Area Damage Radius: 4", "Projectile: 72 damage", "Muzzle Velocity: 20", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Siege Tank: Othuum":
                    unitSectionNames = ["Aire-au Bolter (2)", "Thau Cannon", "Uall Cavitation Torpedo Launcher"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 150", "Range 0-25", "Projectile: 75 damage", "Muzzle Velocity: 35", "Fire Cycle: 1 projectile every 0.5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Indirect Fire, Normal", "DPS: 100", "Range 0-32", "Projectile: 400 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 4 seconds", "Firing Tolerance: 1°"]
                    let w3: [String] =  ["Type: Anti-Air, Normal", "DPS: 5", "Range 0-32", "Projectile: 10 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s", "Reload: 3.3 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T3 Mobile Heavy Artillery: Suthanus":
                    unitSectionNames = ["Suthanus Heavy Artillery Cannon"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 70", "Range 0-90", "Area Damage Radius: 6", "Projectile: 700 damage", "Muzzle Velocity: 22", "Fire Cycle: 1 projectile every 10 seconds", "Firing Randomness: 1.75°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "T3 Sniper Bot: Usha-Ah":
                    unitSectionNames = ["Sih Energy Rifle", "Sih Energy Rifle"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 116", "Range 0-65", "Area Damage Radius: 0", "Projectile: 580 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 0.5°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 139.86", "Range 0-75", "Area Damage Radius: 0", "Projectile: 2,000 damage", "Muzzle Velocity: 120", "Fire Cycle: 1 projectile every 14.3 seconds", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1, w2]
                    
                    
                case "Experimental Assault Bot: Ythotha":
                    unitSectionNames = ["Experimental Phason Beam Generator", "Gatling Plasma Cannon", "Heavy Sinn Unthe Cannon", "Olaris AA Artillery Cannon (2)", "Colossus Death"]
                    let w1: [String] =  ["Type: Direct Fire Experimental, Normal", "DPS: 1,600", "Range: 4-45", "Area Damage Radius: 4", "Projectile: 8,000 damage", "Muzzle Velocity: 8", "Lifetime: 5.52", "Fire Cycle: 1 projectile every 5 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Direct Fire, Normal", "DPS: 1,833.33", "Range: 0-45", "Projectile: 550 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 0.3 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 0.1°"]
                    let w3: [String] =  ["Type: Direct Fire Experimental, Normal", "DPS: 364.64", "Range: 0-45", "Area Damage Radius: 6", "Projectile: 1,200 damage", "Muzzle Velocity: 40", "Lifetime: 1", "Fire Cycle: 1 projectile every 3.3 seconds", "Firing Tolerance: 1°"]
                    let w4: [String] =  ["Type: Anti-Air, Normal", "DPS: 250", "Range: 0-45", "Area Damage Radius: 1.5", "Projectile: 25 damage", "Muzzle Velocity: 20", "Fire Cycle: 3 times 1 projectile every 0.3s", "Reload: 0.3 seconds", "Firing Randomness: 3.5°", "Firing Tolerance: 0.5°"]
                    let w5: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 8"]
                    unitSectionCells = [w1, w2, w3, w4, w5]
                    
                case "T1 Frigate: Hau-esel":
                    unitSectionNames = ["Shie-eih Auto-Cannon", "Shleo AA AutoGun"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 54.55", "Range: 0-28", "Area Damage Radius: 1", "Projectile: 20 damage", "Muzzle Velocity: 30", "Fire Cycle: 3 times 1 projectile every 0.2s", "Reload: 0.7 seconds", "Firing Randomness: 0.1°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 13.33", "Range: 0-48", "Projectile: 2 damage", "Muzzle Velocity: 45", "Fire Cycle: 2 projectiles every 0.3 seconds", "Firing Tolerance: 1°"]
                    unitSectionCells = [w1, w2]
                    
                case "T1 Attack Submarine: Sou-istle":
                    unitSectionNames = ["Uall Cavitation Torpedo", "Ajellu Anti-Torpedo Defense", "Oh Spectra Cannon"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 37.5", "Range: 0-32", "Projectile: 75 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s","Reload: 3.3 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.1", "Range: 0-32", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 7", "Fire Cycle: 1 projectile every 20 seconds"]
                    let w3: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 21.43", "Range: 0-32", "Projectile: 15 damage", "Muzzle Velocity: 30", "Lifetime: 1.4", "Fire Cycle: 1 projectile every 0.7 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                case "T2 Destroyer: Uashavoh":
                    unitSectionNames = ["Ultrachromatic Beam Generator", "Ultrachromatic Beam Generator", "Ana-it Torpedo Launcher", "Ajellu Anti-Torpedo Defense"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 112.5", "Range: 0-60", "Area Damage Radius: 1", "Beam: 50 dmg 9 times every 0.1s", "Fire Cycle: 1 beam every 4 seconds"]
                    let w2: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 58.5", "Range: 0-60", "Area Damage Radius: 1", "Beam: 26 dmg 9 times every 0.1s", "Fire Cycle: 1 beam every 4 seconds"]
                    let w3: [String] =  ["Type: Anti-Navy, Normal", "DPS: 160", "Range: 0-45", "Projectile: 80 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 times 1 projectile every 0.7s","Reload: 0.3 seconds", "Firing Randomness: 1°", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 0.53", "Range: 0-15", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 7", "Fire Cycle: 1 projectile every 3.8 seconds", "Firing Tolerance: 90°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "T2 Cruiser: Ithalua":
                    unitSectionNames = ["Laanse Tactical Missile Launcher", "Olaris AA Artillery Cannon", "Cleo AA Gatling Gun", "Ele-athrun Tactical Missile Defense"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 250", "Range: 0-150", "Area Damage Radius: 3", "Projectile: 500 damage", "Muzzle Velocity: 5", "Lifetime: 60", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Naval, Normal", "DPS: 480", "Range: 0-65", "Area Damage Radius: 4", "Projectile: 120 damage", "Muzzle Velocity: 20", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    let w3: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-45", "Projectile: 50 damage", "Muzzle Velocity: 100", "Fire Cycle: 2 projectiles every 0.3s", "Firing Tolerance: 0.5°"]
                    let w4: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-50", "Projectile: 1 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 5°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                    
                case "T3 Battleship: Hauthuum":
                    unitSectionNames = ["Heavy Quarnon Cannon (3)", "Ele-athrun Tactical Missile Defense (2)", "Olaris AA Artillery Cannon (2)", "Inaino Strategic Missile Launcher"]
                    let w1: [String] =  ["Type: Direct Fire Naval, Normal", "DPS: 150", "Range: 0-128", "Area Damage Radius: 2", "Projectile: 600 damage", "Muzzle Velocity: 30", "Fire Cycle: 1 projectile every 4 seconds", "Firing Randomness: 0.3°", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.5", "Range: 0-50", "Projectile: 1 damage", "Muzzle Velocity: 25", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 5°"]
                    let w3: [String] =  ["Type: Anti-Air, Normal", "DPS: 14.55", "Range: 0-40", "Area Damage Radius: 2", "Projectile: 8 damage", "Muzzle Velocity: 20", "Fire Cycle: 2 projectiles every 1.1 seconds", "Firing Randomness: 2.5°", "Firing Tolerance: 2°"]
                    let w4: [String] =  ["Type: Missile, Normal", "Range: 128-410", "Nuke Inner-Ring Damage: 30,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40",  "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3, w4]
                    
                case "T3 Aircraft Carrier: Iavish":
                    unitSectionNames = ["Laanse Tactical Missile Launcher", "Losaare AA Autocannon (2)"]
                    let w1: [String] =  ["Type: Missile, Normal", "DPS: 250", "Range: 0-150", "Area Damage Radius: 3", "Projectile: 500 dmg", "Muzzle Velocity: 5", "Lifetime: 60", "Fire Cycle: 1 projectile every 2 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Anti-Air, Normal", "DPS: 240", "Range: 0-100", "Projectile: 60 damage", "Muzzle Velocity: 90", "Fire Cycle: 2 projectiles every 0.5s", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Submarine Hunter: Yathsou":
                    unitSectionNames = ["Uall Cavitation Torpedo", "Ajellu Anti-Torpedo Defense (2)", "Losaare AA Autocannon"]
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 335", "Range: 0-65", "Projectile: 335 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 4 times 1 projectile every 0.9s","Reload: 1.3 seconds", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Defense, Normal", "DPS: 0.3", "Range: 0-32", "Projectile: 2 damage", "Muzzle Velocity: 80", "Lifetime: 1.5", "Fire Cycle: 1 projectile every 6.7 seconds", "Firing Tolerance: 50°"]
                    let w3: [String] =  ["Type: Anti-Navy, Normal", "DPS: 200", "Range: 0-65", "Projectile: 50 damage", "Muzzle Velocity: 90", "Fire Cycle: 2 projectiles every 0.5 seconds", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1, w2, w3]
                    
                    
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }

                
            }
            //Seraphim Enhancements
            //UEF Enhancements
            if vweName == "Enhancements"
            {
                
                
                switch unitName
                {
                case "ACU":
                    unitSectionNames = ["Tech 2 Engineering Suite", "Rapid Restoration Field", "Refactoring Chronotron Amplifier", "Nano-Repair System", "Enhanced Nano-Repair System", "Tactical Missile Launcher", "Chronotron Accelerator", "Restoration Field", "Resource Allocation System", "Advanced Resource Allocation System", "Tech 3 Engineering Suite", "Personal Teleporter"]
                    
                    let e1: [String] =  ["Section: LCH", "Mass: 720", "Energy: 18,000", "Build Time: 900", "New HP: 14,500 (+3,000)", "New Regen Rate: 30 HP/s (+20 HP/s)", "New Build Rate: 42"]
                    let e2: [String] =  ["Section: RCH", "Mass: 1,500", "Energy: 31,250", "Build Time: 1,250"]
                    let e3: [String] =  ["Section: LCH", "Mass: 3,500", "Energy: 300,000", "Build Time: 4,200", "New Projectile Damage: 500 (+400)", "New Damage Radius: 2"]
                    let e4: [String] =  ["Section: Back", "Mass: 2,000", "Energy: 90,000", "Build Time: 2,800", "New HP: 17,500 (+6,000)", "New Regen Rate: 160 HP/s (+150 HP/s)"]
                    let e5: [String] =  ["Section: Back", "Mass: 4,500", "Energy: 450,000", "Build Time: 4,200", "New HP: 31,500 (+20,000)", "New Regen Rate: 160 HP/s (+150 HP/s)"]
                    let e6: [String] =  ["Section: Back", "Mass: 1,000", "Energy: 50,000", "Build Time: 1,400"]
                    let e7: [String] =  ["Section: RCH", "Mass: 800", "Energy: 24,000", "Build Time: 800", "New Weapons Range: 30", "New Rate of Fire: 2"]
                    let e8: [String] =  ["Section: RCH", "Mass: 600", "Energy: 4,500", "Build Time: 600"]
                    let e9: [String] =  ["Section: Back", "Mass: 5,000 (+16)", "Energy: 150,000 (+3,000)", "Build Time: 1,400"]
                    let e10: [String] =  ["Section: Back", "Mass: 5,000 (+32)", "Energy: 150,000 (+6,000)", "Build Time: 1,400"]
                    let e11: [String] =  ["Section: LCH", "Mass: 2,400", "Energy: 50,000", "Build Time: 8,400", "New HP: 18,500 (+7,000)", "New Regen Rate: 45 HP/s (+35 HP/s)", "New Build Rate: 126"]
                    let e12: [String] =  ["Section: Back", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 4,200"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12]
                    
                    
                    
                case "T3 Support ACU":
                    unitSectionNames = ["Nano-Repair System", "Rapid Fabricator", "Enhanced Sensor System", "Tactical Missile Launcher", "Overcharge", "Personal Shield Generator", "Personal Teleporter"]
                    
                    let e1: [String] =  ["Section: LCH","Mass: 2,500", "Energy: 75,000", "Build Time: 6,720", "New HP: 29,500 (+14,000)", "New Regen Rate: 265 HP/s (+250 HP/s)"]
                    let e2: [String] =  ["Section: LCH", "Mass: 800", "Energy: 50,000", "Build Time: 4,200", "New Build Rate: 98"]
                    let e3: [String] =  ["Section: Back", "Mass: 800", "Energy: 36,000", "Build Time: 3,360", "New Weapons Range: 35", "New Omni Radius: 60", "New Vision Radius: 36"]
                    let e4: [String] =  ["Section: Back", "Mass: 1,000", "Energy: 50,000", "Build Time: 4,200"]
                    let e5: [String] =  ["Section: RCH", "Mass: 4,500", "Energy: 270,000", "Build Time: 12,600"]
                    let e6: [String] =  ["Section: Back", "Mass: 1,500", "Energy: 105,000 (-300)", "Build Time: 6,720", "Shield HP: 25,000", "Shield Size: 0", "Shield Regen Rate: 22 HP/s", "Shield Recharge Time: 160s", "Shield Recharge Rate: 156 HP/s"]
                    let e7: [String] =  ["Section: RCH", "Mass: 15,000", "Energy: 1,500,000 (-10,000)", "Build Time: 21,000"]
                    unitSectionCells = [e1, e2, e3, e4, e5, e6, e7]
                    
                    
                default:
                    print("WeaponsView Error:" + factionName + "/" + unitName + "/" + vweName)
                    
                }
                
                
                
                
                
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
        super.viewWillDisappear(animated)
        
       
        if(floatyClicked! == false)
        {
            print("Selected: Back Button")
        }
        
        //Set for running log
        floatyClicked = false
        
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
