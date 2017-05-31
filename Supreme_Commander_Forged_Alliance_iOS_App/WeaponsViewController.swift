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
                    let w1: [String] =  ["Type: Anti-Navy, Normal", "DPS: 75", "Range: 0-50", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 7", "Fire Cycle: 2 projectiles every 4 seconds", "Firing Tolerance: 30°"]
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
                    let w1: [String] =  ["Type: Anti-Nacy, Normal", "DPS: 150", "Range: 0-60", "Projectile: 150 damage", "Muzzle Velocity: 5", "Lifetime: 12", "Fire Cycle: 1 projectile per second", "Firing Tolerance: 60°"]
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
                    let w1: [String] =  ["Type: Anti-Air, Normal", "DPS: 333.33", "Range: 0-60", "Area Damage Radius: 1.5",  "Projectile: 200 damage", "Muzzle Velocity: 45", "Lifetime: 6", "Fire Cycle: 6 projectiles every 3.6 seconds", "Firing Tolerance: 10°"]
                    unitSectionCells = [w1]
    
                case "T3 Strategic Missile Launcher: Stonager":
                    unitSectionNames = ["Nuclear Warhead", "Death Weapons"]
                    let w1: [String] =  ["Type: Missile, Normal", "Range: 0-20,000", "Nuke Inner-Ring Damage: 70,000", "Nuke Inner-Ring Radius: 30", "Nuke Outer-Ring Damage: 500", "Nuke Outer-Ring Radius: 40", "Firing Tolerance: 2°"]
                    let w2: [String] =  ["Type: Death, Normal", "Damage: 10,000", "Area Damage Radius: 6"]
                    unitSectionCells = [w1, w2]
                    
                case "T3 Heavy Point Defense: Ravager":
                    unitSectionNames = ["Heavy Plasma Gatling Gun"]
                    let w1: [String] =  ["Type: Direct Fire, Normal", "DPS: 328.13", "Range: 0-70", "Area Damage Radius: 1",  "Projectile: 175 damage", "Muzzle Velocity: 32", "Fire Cycle: 15 projectiles every 8 seconds",  "Energy Required: 50 (-50)", "Firing Randomness: 0.2°", "Firing Tolerance: 2°"]
                    unitSectionCells = [w1]
                    
                case "Experimental Artillery: Mavor":
                    unitSectionNames = ["Anti-Matter Artillery"]
                    let w1: [String] =  ["Type: Artillery, Normal", "DPS: 1,500", "Range: 150-4,000", "Area Damage Radius: 7",  "Projectile: 12,000 damage", "Muzzle Velocity: 160", "Lifetime: 1,000", "Fire Cycle: 1 projectile every 8 seconds",  "Energy Required: 30,000 (-7,500)", "Firing Randomness: 0.22°", "Firing Tolerance: 0.5°"]
                    unitSectionCells = [w1]
                    
                   
                    
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
