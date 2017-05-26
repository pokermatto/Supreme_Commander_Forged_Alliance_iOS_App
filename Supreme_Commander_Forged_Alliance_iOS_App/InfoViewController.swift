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
                let economy: [String] =  ["Mass: 18,000 (+1)", "Mass Storage: 650", "Energy: 5,000,000 (+20)", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
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
                let economy: [String] =  ["Mass: 2,100 (+1)", "Mass Storage: 275", "Energy: 25,200 (+20)", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
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
                let economy: [String] =  ["Mass: 550", "Energy: 2,750", "Build Time: 1,100", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 15"]
                let wreckage: [String] =  ["Health: 900 HP", "Mass: 495"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Engineer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0208"]
                let health: [String] =  ["HP: 300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious", "Engineering Suite"]
                let economy: [String] =  ["Mass: 140", "Mass Storage: 20", "Energy: 700", "Build Time: 700", "Build Rate: 12.5"]
                let intel: [String] =  ["Vision Radius: 20"]
                let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 120"]
                let wreckage: [String] =  ["Health: 270 HP", "Mass: 126"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Field Engineer: Sparky":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XEL0209"]
                let health: [String] =  ["HP: 1,040", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious", "Engineering Suite", "Jamming", "Radar"]
                let economy: [String] =  ["Mass: 225", "Mass Storage: 30", "Energy: 1,000", "Build Time: 1,000", "Build Rate: 17.5"]
                let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 45"]
                let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 120"]
                let wreckage: [String] =  ["Health: 936 HP", "Mass: 202"]
                //TODO add sections for Veterancy and Weapons
                
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T3 Engineering Station: The Kennel":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["XEB0204"]
                let health: [String] =  ["HP: 3,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Engineering Suite"]
                let economy: [String] =  ["Mass: 500", "Energy: 2,500", "Build Time: 2,000", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 15"]
                let wreckage: [String] =  ["Health: 2700 HP", "Mass: 450"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Engineer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0309"]
                let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious", "Engineering Suite"]
                let economy: [String] =  ["Mass: 440", "Mass Storage: 40", "Energy: 2,200", "Build Time: 2,200", "Build Rate: 30"]
                let intel: [String] =  ["Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 1.4", "Turn Rate: 120"]
                let wreckage: [String] =  ["Health: 540 HP", "Mass: 396"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                
                
            //Factory Units
            case "T1 Land Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0101"]
                let health: [String] =  ["HP: 4,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 240", "Mass Storage: 80", "Energy: 2,100", "Build Time: 300", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 3,690 HP", "Mass: 216"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T1 Air Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0102"]
                let health: [String] =  ["HP: 4,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 210", "Mass Storage: 80", "Energy: 2,400", "Build Time: 300", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 3,690 HP", "Mass: 189"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T1 Naval Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0103"]
                let health: [String] =  ["HP: 4,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 300", "Mass Storage: 80", "Energy: 1,500", "Build Time: 300", "Build Rate: 20"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 4,320 HP", "Mass: 270"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Land Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0201"]
                let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 1,040", "Energy: 9,300", "Build Time: 1,600", "Build Rate: 40"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 936"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Air Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0202"]
                let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 840", "Mass Storage: 160", "Energy: 14,100", "Build Time: 1,800", "Build Rate: 40"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 756"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Naval Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0203"]
                let health: [String] =  ["HP: 18,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 1,670", "Mass Storage: 160", "Energy: 8,100", "Build Time: 2,400", "Build Rate: 60"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 16,200 HP", "Mass: 1,503"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Land Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9501"]
                let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 540", "Mass Storage: 160", "Energy: 4,800", "Build Time: 1,300", "Build Rate: 40"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 4,050 HP", "Mass: 486"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Air Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9502"]
                let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 510", "Energy: 7,971", "Build Time: 1,300", "Build Rate: 40"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 4,050 HP", "Mass: 459"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Naval Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9503"]
                let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 800", "Mass Storage: 160", "Energy: 4,000", "Build Time: 2,000", "Build Rate: 60"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 720"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Land Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0301"]
                let health: [String] =  ["HP: 22,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 4,400", "Energy: 39,900", "Build Time: 9,400", "Build Rate: 90"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 19,800 HP", "Mass: 3,996"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Air Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0302"]
                let health: [String] =  ["HP: 22,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 4,090", "Energy: 99,191", "Build Time: 10,400", "Build Rate: 120"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 19,800 HP", "Mass: 3,681"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Naval Factory HQ":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0303"]
                let health: [String] =  ["HP: 40,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 7,120", "Energy: 32,572", "Build Time: 9,200", "Build Rate: 120"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 19,800 HP", "Mass: 3,681"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Quantum Gateway: QGW R-32":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB0304"]
                let health: [String] =  ["HP: 10,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 3,000", "Energy: 30,000", "Build Time: 4,097", "Build Rate: 120"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 9,000 HP", "Mass: 2,700"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Land Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9601"]
                let health: [String] =  ["HP: 11,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 1,290", "Energy: 11,550", "Build Time: 3,000", "Build Rate: 90"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 9,900 HP", "Mass: 1,161"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Air Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9602"]
                let health: [String] =  ["HP: 11,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 1,510", "Energy: 34,153", "Build Time: 4,000", "Build Rate: 120"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 9,900 HP", "Mass: 1,359"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Naval Factory":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["ZEB9603"]
                let health: [String] =  ["HP: 20,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 1,600", "Energy: 7,429", "Build Time: 4,000", "Build Rate: 120"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 18,000 HP", "Mass: 1,440"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                
            //Economy Units
            case "T1 Power Generator":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1101"]
                let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 75", "Energy: 750 (+20)", "Build Time: 125"]
                let wreckage: [String] =  ["Health: 540 HP", "Mass: 67"]
                //TODO add Weapon cell
                unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
            case "T1 Hydrocarbon Power Plant: HCPP - X1000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1102"]
                let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 160", "Energy: 800 (+100)", "Build Time: 400"]
                let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 144"]
                unitSectionCells = [bluePrintID, health, economy, wreckage]
            case "T1 Mass Extractor: Mass Pump 1":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1103"]
                let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 36 (+2)", "Energy: 360 (-2)", "Build Time: 60", "Build Rate: 13.01"]
                let wreckage: [String] =  ["Health: 540 HP", "Mass: 32"]
                unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
            case "T1 Energy Storage":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1105"]
                let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 250", "Energy: 1,200", "Build Time: 200",]
                let wreckage: [String] =  ["Health: 450 HP", "Mass: 225"]
                unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
            case "T1 Mass Storage":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1106"]
                let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 200", "Mass Storage: 500", "Energy: 1,500", "Build Time: 250",]
                let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 180"]
                unitSectionCells = [bluePrintID, health, economy, wreckage]
            case "T2 Mass Fabricator":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                let bluePrintID = ["UEB1104"]
                let health: [String] =  ["HP: 360", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 100 (+1)", "Energy: 4,000 (-150)", "Build Time: 500",]
                let wreckage: [String] =  ["Health: 324 HP", "Mass: 90"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
            case "T2 Power Generator: EG-200 Fusion Reactor":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB1201"]
                let health: [String] =  ["HP: 2,160", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 1,200", "Energy: 12,000 (+500)", "Build Time: 2,198",]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 1,944 HP", "Mass: 1,080"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Mass Extractor: Mass Pump 2":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB1202"]
                let health: [String] =  ["HP: 3,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Upgradeable"]
                let economy: [String] =  ["Mass: 900 (+6)", "Energy: 5,400 (-9)", "Build Time: 1,171", "Build Rate: 20.58"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 2,700 HP", "Mass: 810"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Power Generator: EG-900 Fusion Reactor":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB1301"]
                let health: [String] =  ["HP: 9,720", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 3,240", "Energy: 57,600 (+2,500)", "Build Time: 6,824"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 8,748 HP", "Mass: 2,916"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Mass Extractor: Mass Pump 3":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB1302"]
                let health: [String] =  ["HP: 8,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 4,600 (+18)", "Energy: 31,625 (-54)", "Build Time: 3,944"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 7,560 HP", "Mass: 4,140"]
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Mass Fabricator":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB1303"]
                let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Volatile"]
                let economy: [String] =  ["Mass: 3,000 (+12)", "Energy: 65,000 (-3,500)", "Build Time: 4,988"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 2,700"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                
            //Weapon Units
            case "T1 Point Defense: DM1 Plasma Cannon":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2101"]
                let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 250", "Energy: 2,000", "Build Time: 250"]
                let intel: [String] =  ["Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 225"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T1 Anti-Air Turret: DA1 Railgun":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2104"]
                let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Anti-Air", "Aquatic"]
                let economy: [String] =  ["Mass: 150", "Energy: 1,500", "Build Time: 188"]
                let intel: [String] =  ["Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 720 HP", "Mass: 135"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T1 Torpedo Launcher: DN1":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2109"]
                let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Sonar", "Torpedoes"]
                let economy: [String] =  ["Mass: 450", "Energy: 3,600", "Build Time: 450"]
                let intel: [String] =  ["Vision Radius: 12", "Sonar Radius: 35", "Water Vision Radius: 45"]
                let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 405"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Tactical Missile Launcher: Aloha":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2108"]
                let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Manual Launch"]
                let economy: [String] =  ["Mass: 800", "Energy: 4,000", "Build Time: 800", "Build Rate: 80"]
                let intel: [String] =  ["Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 720"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Anti-Air Flak Artillery: Air Cleaner":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2204"]
                let health: [String] =  ["HP: 2,590", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Anti-Air", "Aquatic"]
                let economy: [String] =  ["Mass: 392", "Energy: 3,920", "Build Time: 958"]
                let intel: [String] =  ["Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 2,331 HP", "Mass: 352"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Torpedo Launcher: Tsunami":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2205"]
                let health: [String] =  ["HP: 6,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Sonar", "Torpedoes"]
                let economy: [String] =  ["Mass: 1,080", "Energy: 9,000", "Build Time: 1,467"]
                let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 35", "Water Vision Radius: 45"]
                let wreckage: [String] =  ["Health: 5,760 HP", "Mass: 972"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Point Defense: Triad":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2301"]
                let health: [String] =  ["HP: 2,250", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 540", "Energy: 3,600", "Build Time: 664"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 2,025 HP", "Mass: 486"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T2 Artillery Installation: Klink Hammer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2303"]
                let health: [String] =  ["HP: 3,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 1,890", "Energy: 13,500", "Build Time: 1,608"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 3,240 HP", "Mass: 1,701"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Heavy Artillery Installation: Duke":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2302"]
                let health: [String] =  ["HP: 15,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 72,000", "Energy: 900,000", "Build Time: 30,278"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 13,500 HP", "Mass: 64,800"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "T3 Anti-Air SAM Launcher: Flayer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2304"]
                let health: [String] =  ["HP: 7,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Anti-Air", "Aquatic"]
                let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 1,195"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 6,300 HP", "Mass: 720"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Strategic Missile Launcher: Stonager":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2305"]
                let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Manual Launch"]
                let economy: [String] =  ["Mass: 15,000", "Energy: 210,000", "Build Time: 10,453", "Build Rate: 1,080"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 13,500"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Heavy Point Defense: Ravager":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["XEB2306"]
                let health: [String] =  ["HP: 7,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 1,800", "Energy: 16,000", "Build Time: 1,500"]
                let intel: [String] =  ["Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 6,750 HP", "Mass: 1,620"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            case "Experimental Artillery: Mavor":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB2401"]
                let health: [String] =  ["HP: 8,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 224,775", "Energy: 5,994,000", "Build Time: 99,900"]
                let intel: [String] =  ["Vision Radius: 28"]
                let wreckage: [String] =  ["Health: 7,200 HP", "Mass: 202,297"]
                //TODO add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
            
            //Defense Units
            case "T2 Tactical Missile Defense: Buzzkill":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB4201"]
                let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Aquatic", "Tactile Missile Defense"]
                let economy: [String] =  ["Mass: 280", "Energy: 3,200", "Build Time: 600"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 900 HP", "Mass: 252"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Shield Generator: SD-Pulse":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB4202"]
                let health: [String] =  ["HP: 250", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let shield: [String] =  ["HP: 9,000", "Size: 26", "Regen Rate: 120 HP/s", "Recharge Time: 15s", "Recharge Rate: 600 HP/s"]
                let abilities: [String] =  ["Shield Dome", "Upgradeable"]
                let economy: [String] =  ["Mass: 600", "Energy: 6,000 (-200)", "Build Time: 845", "Build Rate: 19.95"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 225 HP", "Mass: 540"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
            case "T2 Stealth Field Generator: Scattershield":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB4203"]
                let health: [String] =  ["HP: 225", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Stealth Field"]
                let economy: [String] =  ["Mass: 360", "Energy: 5,400 (-125)", "Build Time: 664"]
                let intel: [String] =  ["Vision Radius: 20", "Radar Stealth Field Radius: 24", "Sonar Stealth Field Radius: 24"]
                let wreckage: [String] =  ["Health: 202 HP", "Mass: 324"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Heavy Shield Generator: HSD Pulse":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB4301"]
                let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let shield: [String] =  ["HP: 15,000", "Size: 44", "Regen Rate: 131 HP/s", "Recharge Time: 23s", "Recharge Rate: 652 HP/s"]
                let abilities: [String] =  ["Shield Dome"]
                let economy: [String] =  ["Mass: 3,000", "Energy: 50,000 (-400)", "Build Time: 4,988"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 450 HP", "Mass: 2,700"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
            case "T3 Strategic Missile Defense: Nuke Eliminator":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB4302"]
                let health: [String] =  ["HP: 3,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Strategic Missile Defense"]
                let economy: [String] =  ["Mass: 7,500", "Energy: 105,000", "Build Time: 5,814", "Build Rate: 1,080"]
                let intel: [String] =  ["Vision Radius: 20"]
                let wreckage: [String] =  ["Health: 3,420 HP", "Mass: 6,750"]
                //TODO add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                
            //Sensor Units
            case "T1 Radar System: SA1-1000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB3101"]
                let health: [String] =  ["HP: 10", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Radar", "Upgradeable"]
                let economy: [String] =  ["Mass: 80", "Energy: 720 (-20)", "Build Time: 80", "Build Rate: 14.08"]
                let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 115"]
                let wreckage: [String] =  ["Health: 9 HP", "Mass: 72"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T1 Sonar System: SP1-1000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB3102"]
                let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Sonar", "Upgradeable"]
                let economy: [String] =  ["Mass: 64", "Energy: 544 (-10)", "Build Time: 80", "Build Rate: 14.08"]
                let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 115"]
                let wreckage: [String] =  ["Health: 540 HP", "Mass: 57"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Radar System: SA2-2000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB3201"]
                let health: [String] =  ["HP: 50", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Radar", "Upgradeable"]
                let economy: [String] =  ["Mass: 180", "Energy: 3,600 (-250)", "Build Time: 845", "Build Rate: 21.46"]
                let intel: [String] =  ["Vision Radius: 25", "Radar Radius: 200"]
                let wreckage: [String] =  ["Health: 45 HP", "Mass: 162"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T2 Sonar System: SP2-2000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB3202"]
                let health: [String] =  ["HP: 1,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Sonar", "Upgradeable"]
                let economy: [String] =  ["Mass: 120", "Energy: 3,600 (-100)", "Build Time: 845", "Build Rate: 15"]
                let intel: [String] =  ["Vision Radius: 25", "Sonar Radius: 230"]
                let wreckage: [String] =  ["Health: 1,260 HP", "Mass: 108"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Omni Sensor Array: SA3-Omni":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UEB3104"]
                let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Omni Sensor", "Radar"]
                let economy: [String] =  ["Mass: 2,400", "Energy: 30,000 (-2,000)", "Build Time: 2,575"]
                let intel: [String] =  ["Vision Radius: 30", "Radar Radius: 600", "Omni Radius: 200"]
                let wreckage: [String] =  ["Health: 90 HP", "Mass: 2,160"]
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            case "T3 Sonar Platform: SP3-3000":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                let bluePrintID = ["UES0305"]
                let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Sonar", "Torpedoes"]
                let economy: [String] =  ["Mass: 400", "Energy: 12,000 (-100)", "Build Time: 750"]
                let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 450", "Water Vision Radius: 24"]
                let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 360"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
            
            //Air Units
            case "T1 Air Scout: Hummingbird":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0101"]
                let health: [String] =  ["HP: 35", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Radar", "Sonar"]
                let economy: [String] =  ["Mass: 40", "Energy: 420", "Build Time: 145"]
                let intel: [String] =  ["Vision Radius: 42", "Radar Radius: 65", "Sonar Radius: 30"]
                let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 8:20", "Fuel Recharge Time: 16:40"]
                let airPhysics: [String] =  ["Speed: 17-20", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                let wreckage: [String] =  ["Health: 31 HP", "Mass: 36"]
                //Add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T1 Interceptor: Cyclone":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0102"]
                let health: [String] =  ["HP: 295", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Anti-Air"]
                let economy: [String] =  ["Mass: 50", "Energy: 2,250", "Build Time: 500"]
                let intel: [String] =  ["Vision Radius: 28"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 5:00", "Fuel Recharge Time: 10:00"]
                let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                let wreckage: [String] =  ["Health: 265 HP", "Mass: 45"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T1 Attack Bomber: Scorcher":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0103"]
                let health: [String] =  ["HP: 215", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Radar"]
                let economy: [String] =  ["Mass: 80", "Energy: 2,250", "Build Time: 500"]
                let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                let airPhysics: [String] =  ["Speed: 10-10", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8 # 0.7", "Combat Turn Speed: 0.8 # 0.7"]
                let wreckage: [String] =  ["Health: 193 HP", "Mass: 72"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T1 Light Air Transport: C-6 Courier":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0107"]
                let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Transport"]
                let economy: [String] =  ["Mass: 120", "Energy: 4,800", "Build Time: 800"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                let airPhysics: [String] =  ["Speed: 0-10", "Elevation: 10"]
                let wreckage: [String] =  ["Health: 450 HP", "Mass: 108"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T2 Fighter/Bomber: Janus":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["DEA0202"]
                let health: [String] =  ["HP: 1,200", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Anti-Air", "Radar"]
                let economy: [String] =  ["Mass: 420", "Energy: 8,400", "Build Time: 2,400"]
                let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 8:20", "Fuel Recharge Time: 8:20"]
                let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                let wreckage: [String] =  ["Health: 1,080 HP", "Mass: 378"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T2 Air Transport: C14 Star Lifter":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0104"]
                let health: [String] =  ["HP: 1,675", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Anti-Air", "Transport"]
                let economy: [String] =  ["Mass: 300", "Energy: 12,000", "Build Time: 2,400"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 12:30", "Fuel Recharge Time: 1:54"]
                let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 8"]
                let wreckage: [String] =  ["Health: 1,507 HP", "Mass: 270"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T2 Gunship: Stinger":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0203"]
                let health: [String] =  ["HP: 880", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Transport"]
                let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                let airPhysics: [String] =  ["Speed: 3-12", "Elevation: 10"]
                let wreckage: [String] =  ["Health: 792 HP", "Mass: 216"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T2 Torpedo Bomber: Stork":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0204"]
                let health: [String] =  ["HP: 860", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Sonar", "Torpedoes"]
                let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 10:00", "Fuel Recharge Time: 20:00"]
                let airPhysics: [String] =  ["Speed: 13-15", "Elevation: 18", "Engage Distance: 75", "Turn Speed: 0.48", "Combat Turn Speed: 0.5"]
                let wreckage: [String] =  ["Health: 774 HP", "Mass: 216"]
                //Add Veterancy Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T3 Spy Plane: SR90 Blackbird":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0302"]
                let health: [String] =  ["HP: 1,150", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Omni Sensor", "Radar"]
                let economy: [String] =  ["Mass: 195", "Energy: 7,500", "Build Time: 900"]
                let intel: [String] =  ["Vision Radius: 64", "Radar Radius: 96", "Omni Radius: 30"]
                let physics: [String] =  ["Max Speed: 10", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                let airPhysics: [String] =  ["Speed: 25-30", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 1.0", "Combat Turn Speed: 1.0"]
                let wreckage: [String] =  ["Health: 1,035 HP", "Mass: 175"]
                //Add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T3 Air-Superiority Fighter: Wasp":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0303"]
                let health: [String] =  ["HP: 1,800", "Regen Rate: 0 HP/s", "Armor Type: ASF # Light"]
                let abilities: [String] =  ["Anti-Air"]
                let economy: [String] =  ["Mass: 350", "Energy: 40,000", "Build Time: 3,000"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 16:40", "Fuel Recharge Time: 12:00"]
                let airPhysics: [String] =  ["Speed: 8-25", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 1.9", "Combat Turn Speed: 1.9"]
                let wreckage: [String] =  ["Health: 1,620 HP", "Mass: 315"]
                //Add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T3 Strategic Bomber: Ambassador":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0304"]
                let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Anti-Air", "Radar"]
                let economy: [String] =  ["Mass: 2,100", "Energy: 105,000", "Build Time: 8,400"]
                let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                let airPhysics: [String] =  ["Speed: 15-17", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8"]
                let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1,890"]
                //Add Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T3 Heavy Gunship: Broadship":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["UEA0305"]
                let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let abilities: [String] =  ["Anti-Air"]
                let economy: [String] =  ["Mass: 1,260 # 1,680", "Energy: 42,000 # 52,500", "Build Time: 6,300 # 8,400"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 13:20", "Fuel Recharge Time: 8:53"]
                let airPhysics: [String] =  ["Speed: 3-10", "Elevation: 10"]
                let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 1,134"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage]
            case "T3 Heavy Air Transport: Continental":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["XEA0306"]
                let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                let shield: [String] =  ["HP: 3,000", "Size: 8.5", "Regen Rate: 30 HP/s", "Recharge Time: 35s", "Recharge Rate: 85 HP/s"]
                let abilities: [String] =  ["Anti-Air", "Shield Dome", "Transport"]
                let economy: [String] =  ["Mass: 1,400", "Energy: 52,500 (-400)", "Build Time: 5,250"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 10"]
                let wreckage: [String] =  ["Health: 4,050 HP", "Mass: 1,260"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, airPhysics, wreckage]
            case "Defense Satellite":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Air Physics", "Wreckage"]
                let bluePrintID = ["XEA0002"]
                let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 800", "Energy: 8,000 (-1,000)", "Build Time: 400"]
                let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 70"]
                let physics: [String] =  ["Max Speed: 10", "Turn Rate: 20", "Fuel Recharge Time: 0"]
                let airPhysics: [String] =  ["Speed: 0-6", "Elevation: 75"]
                let wreckage: [String] =  ["Health: 90 HP", "Mass: 720"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, airPhysics, wreckage]
                
            //Vehicle Units
            case "T1 Land Scout: Snoop":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0101"]
                let health: [String] =  ["HP: 29", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Radar"]
                let economy: [String] =  ["Mass: 12", "Energy: 80", "Build Time: 80"]
                let intel: [String] =  ["Vision Radius: 24", "Radar Radius: 45"]
                let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 26 HP", "Mass: 10"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T1 Mobile Light Artillery: Lobo":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0103"]
                let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 36", "Energy: 180", "Build Time: 180"]
                let intel: [String] =  ["Vision Radius: 18"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 180 HP", "Mass: 32"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T1 Mobile Anti-Air Gun: Archer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0104"]
                let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air"]
                let economy: [String] =  ["Mass: 28", "Energy: 140", "Build Time: 140"]
                let intel: [String] =  ["Vision Radius: 20 # 18"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T1 Light Assault Bot: Mech Marine":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0106"]
                let health: [String] =  ["HP: 75", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 35", "Energy: 140", "Build Time: 140"]
                let intel: [String] =  ["Vision Radius: 18"]
                let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 45"]
                let wreckage: [String] =  ["Health: 67 HP", "Mass: 31"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T1 Medium Tank: MA12 Striker":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0201"]
                let health: [String] =  ["HP: 300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 56", "Energy: 266", "Build Time: 280"]
                let intel: [String] =  ["Vision Radius: 20"]
                let physics: [String] =  ["Max Speed: 3.4", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 270 HP", "Mass: 50"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T2 Gatling Bot: Mongoose":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["DEL0204"]
                let health: [String] =  ["HP: 650", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 200", "Energy: 1,000", "Build Time: 1,000"]
                let intel: [String] =  ["Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 3.6", "Turn Rate: 90 # 150"]
                let wreckage: [String] =  ["Health: 585 HP", "Mass: 180"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T2 Mobile Missile Launcher: Flapjack":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0111"]
                let health: [String] =  ["HP: 825", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 200", "Energy: 1,500", "Build Time: 1,000"]
                let intel: [String] =  ["Vision Radius: 18"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 742 HP", "Mass: 180"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T2 Heavy Tank: Pillar":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0202"]
                let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 198", "Energy: 990", "Build Time: 880"]
                let intel: [String] =  ["Vision Radius: 20"]
                let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 178"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "T2 Amphibious Tank: Riptide":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0203"]
                let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Hover"]
                let economy: [String] =  ["Mass: 363", "Energy: 1,980", "Build Time: 1,320"]
                let intel: [String] =  ["Vision Radius: 20 # 18"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Mobile AA Flak Artillery: Sky Boxer":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0205"]
                let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air"]
                let economy: [String] =  ["Mass: 160", "Energy: 800", "Build Time: 800"]
                let intel: [String] =  ["Vision Radius: 20"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                let wreckage: [String] =  ["Health: 900 HP", "Mass: 144"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Mobile Shield Generator: Parashield":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0307"]
                let health: [String] =  ["HP: 150", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let shield: [String] =  ["HP: 3,500", "Size: 17", "Regen Rate: 55 HP/s", "Recharge Time: 24s", "Recharge Rate: 145 HP/s"]
                let abilities: [String] =  ["Shield Dome"]
                let economy: [String] =  ["Mass: 120", "Energy: 900 (-110)", "Build Time: 660"]
                let intel: [String] =  ["Vision Radius: 20"]
                let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 120"]
                let wreckage: [String] =  ["Health: 135 HP", "Mass: 108"]
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
            case "T3 Heavy Assault Bot: Titan":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0303"]
                let health: [String] =  ["HP: 2,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let shield: [String] =  ["HP: 1,200", "Size: 2.5", "Regen Rate: 9 HP/s", "Recharge Time: 60s", "Recharge Rate: 20 HP/s"]
                let abilities: [String] =  ["Personal Shield"]
                let economy: [String] =  ["Mass: 480", "Energy: 5,400 (-25)", "Build Time: 2,400"]
                let intel: [String] =  ["Vision Radius: 22"]
                let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 150"]
                let wreckage: [String] =  ["Health: 1,980 HP", "Mass: 432"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
            case "T3 Mobile Heavy Artillery: Demolisher":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0304"]
                let health: [String] =  ["HP: 950", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Deploys"]
                let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 4,800"]
                let intel: [String] =  ["Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                let wreckage: [String] =  ["Health: 855 HP", "Mass: 720"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T3 Armored Assault Bot: Percival":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XEL0305"]
                let health: [String] =  ["HP: 9,300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Amphibious"]
                let economy: [String] =  ["Mass: 1,280", "Energy: 14,000", "Build Time: 6,000"]
                let intel: [String] =  ["Vision Radius: 26", "Water Vision Radius: 26"]
                let physics: [String] =  ["Max Speed: 2.0", "Turn Rate: 60"]
                let wreckage: [String] =  ["Health: 8,370 HP", "Mass: 1,152"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T3 Mobile Missile Platform: Spearhead":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XEL0306"]
                let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let economy: [String] =  ["Mass: 400", "Energy: 3,000", "Build Time: 2,400"]
                let intel: [String] =  ["Vision Radius: 18"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 60"]
                let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 360"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage]
            case "Experimental Mobile Factory: Fatboy":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UEL0401"]
                let health: [String] =  ["HP: 12,500", "Regen Rate: 20 HP/s", "Armor Type: Experimental"]
                let shield: [String] =  ["HP: 20,000", "Size: 25", "Regen Rate: 64 HP/s", "Recharge Time: 160s", "Recharge Rate: 125 HP/s"]
                let economy: [String] =  ["Mass: 28,000", "Mass Storage: 200", "Energy: 350,000 (-500)", "Build Time: 21,000", "Build Rate: 180"]
                let intel: [String] =  ["Vision Radius: 32", "Water Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 1.75", "Turn Rate: 30"]
                let wreckage: [String] =  ["Health: 11,250 HP", "Mass: 25,200"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, shield, economy, intel, physics, wreckage]
                
                
            //Ship Units
            case "T1 Frigate: Thunderhead Class":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0103"]
                let health: [String] =  ["HP: 2,120", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air", "Jamming", "Radar", "Sonar"]
                let economy: [String] =  ["Mass: 280", "Energy: 2,800 (-5)", "Build Time: 1,400"]
                let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 80", "Sonar Radius: 82", "Water Vision Radius: 16"]
                let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 60"]
                let wreckage: [String] =  ["Health: 1,908 HP", "Mass: 252"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T1 Attack Submarine: Tigershark":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0203"]
                let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Sonar", "Submersible", "Torpedoes"]
                let economy: [String] =  ["Mass: 360", "Energy: 2,880", "Build Time: 1,440"]
                let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 60", "Water Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 80"]
                let wreckage: [String] =  ["Health: 540 HP", "Mass: 324"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Destroyer: Valiant Class":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0201"]
                let health: [String] =  ["HP: 7,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Torpedoes", "Torpedo Defense"]
                let economy: [String] =  ["Mass: 2,250", "Energy: 15,000", "Build Time: 10,000"]
                let intel: [String] =  ["Vision Radius: 32",  "Radar Radius: 35", "Sonar Radius: 37", "Water Vision Radius: 45"]
                let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 50"]
                let wreckage: [String] =  ["Health: 6,480 HP", "Mass: 2,025"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Cruiser: Governor Class":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0202"]
                let health: [String] =  ["HP: 2,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactical Missile Defense"]
                let economy: [String] =  ["Mass: 2,000", "Energy: 18,000", "Build Time: 8,000"]
                let intel: [String] =  ["Vision Radius: 65",  "Radar Radius: 150", "Sonar Radius: 120", "Water Vision Radius: 60"]
                let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 40"]
                let wreckage: [String] =  ["Health: 2,250 HP", "Mass: 1,800"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Torpedo Boat: Cooper":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XES0102"]
                let health: [String] =  ["HP: 1,750", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Sonar", "Torpedoes", "Torpedo Defense"]
                let economy: [String] =  ["Mass: 900", "Energy: 7,200", "Build Time: 3,600"]
                let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 35", "Water Vision Radius: 45"]
                let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 100"]
                let wreckage: [String] =  ["Health: 1,575 HP", "Mass: 810"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T2 Shield Boat: Bulwark":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XES0205"]
                let health: [String] =  ["HP: 750", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let shield: [String] =  ["HP: 8,000", "Size: 120", "Regen Rate: 80 HP/s", "Recharge Time: 32s", "Recharge Rate: 250 HP/s"]
                let abilities: [String] =  ["Shield Dome"]
                let economy: [String] =  ["Mass: 1,300", "Energy: 13,000 (-150)", "Build Time: 5,200"]
                let intel: [String] =  ["Vision Radius: 32"]
                let physics: [String] =  ["Max Speed: 7.0", "Turn Rate: 60"]
                let wreckage: [String] =  ["Health: 675 HP", "Mass: 1,170"]
                //Add Weapons???
                unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
            case "T3 Battleship: Summit Class":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0302"]
                let health: [String] =  ["HP: 51,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactile Missile Defense"]
                let economy: [String] =  ["Mass: 9,000", "Energy: 54,000", "Build Time: 28,800"]
                let intel: [String] =  ["Vision Radius: 50", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 25"]
                let wreckage: [String] =  ["Health: 45,900 HP", "Mass: 8,100"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T3 Strategic Missile Submarine: Ace":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0304"]
                let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Manual Launch", "Sonar", "Submersible"]
                let economy: [String] =  ["Mass: 9,000", "Energy: 80,000", "Build Time: 20,000", "Build Rate: 1,080"]
                let intel: [String] =  ["Vision Radius: 16", "Sonar Radius: 60", "Water Vision Radius: 35"]
                let physics: [String] =  ["Max Speed: 3.3", "Turn Rate: 50"]
                let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 8,100"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "T3 Battlecruiser: Neptune Class":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["XES0307"]
                let health: [String] =  ["HP: 25,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Radar", "Sonar", "Tactical Missile Defense", "Torpedoes", "Torpedo Defense"]
                let economy: [String] =  ["Mass: 7,000", "Energy: 60,000", "Build Time: 25,200"]
                let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                let physics: [String] =  ["Max Speed: 4.25", "Turn Rate: 35"]
                let wreckage: [String] =  ["Health: 22,500 HP", "Mass: 6,300"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
            case "Experimental Aircraft Carrier: Atlantis":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                let bluePrintID = ["UES0401"]
                let health: [String] =  ["HP: 40,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                let abilities: [String] =  ["Anti-Air", "Carrier", "Factory", "Radar", "Sonar", "Submersible", "Torpedoes"]
                let economy: [String] =  ["Mass: 12,000", "Energy: 150,000", "Build Time: 14,400", "Build Rate: 240"]
                let intel: [String] =  ["Vision Radius: 100", "Radar Radius: 250", "Sonar Radius: 252", "Water Vision Radius: 100"]
                let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 12"]
                let wreckage: [String] =  ["Health: 36,000 HP", "Mass: 10,800"]
                //Add Veterancy and Weapons
                unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                
            //Support Units
            case "T1 Wall Section: Calcicrete":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage"]
                let bluePrintID = ["UEB5101"]
                let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 2", "Energy: 10", "Build Time: 10"]
                let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1"]
                unitSectionCells = [bluePrintID, health, economy, wreckage]
            case "T2 Air Staging Facility: Refuel & Repair":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Wreckage"]
                let bluePrintID = ["UEB5202"]
                let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let abilities: [String] =  ["Air Staging"]
                let economy: [String] =  ["Mass: 175", "Energy: 2,100", "Build Time: 534"]
                let wreckage: [String] =  ["Health: 450 HP", "Mass: 157"]
                unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
            case "Experimental Satellite System: Novax Center":
                //TODO add image
                //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                //imageView.image = unitImage
                
                unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage"]
                let bluePrintID = ["XEB2402"]
                let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                let economy: [String] =  ["Mass: 28,000", "Energy: 400,000", "Build Time: 25,000"]
                let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 25,200"]
                //Add Veterancy
                unitSectionCells = [bluePrintID, health, economy, wreckage]
            

                
                
                
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

