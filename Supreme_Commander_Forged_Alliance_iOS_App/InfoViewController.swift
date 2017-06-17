//
//  InfoViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/16/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

import Floaty

class InfoViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
 
    // MARK: - IBOutlets
    
    //Outlet to label at top of Table 3 Scene in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
    
    //Outlet to UIImageView in Table 3 Scene in Storyboard
    @IBOutlet weak var imageView: UIImageView!
    
    //Outlet to TableView in Table 3 Scene in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    /*
     The selected cell on this page (Will be Veterancy, Weapons, or Enhancements cell)
    used for setting and resetting cell selection style
     */
    var selectedCell: UITableViewCell? = nil
    
    
    //Current faction name, passed from detail view controller
    var factionName: String?
    
    
    //Faction Colors
    var uefColor: UIColor? = UIColor(red: 0/255, green: 2/255, blue: 175/255, alpha: 1.0)
    var cybranColor: UIColor? = UIColor(red: 168/255, green: 14/255, blue: 0/255, alpha: 1.0)
    var seraphimColor: UIColor? = UIColor(red: 255/255, green: 215/255, blue: 125/255, alpha: 1.0)
    var aeonColor: UIColor? = UIColor(red: 5/255, green: 150/255, blue: 0/255, alpha: 1.0)
    
    //Current faction color for table cells
    var factionColor: UIColor?
    
    
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
            
            
            
            if factionName == "UEF"
            {
                switch nameOfUnit
                {
                    
                //COMMAND UNITS
                case "ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0001_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UEL0001"]
                    let health: [String] =  ["HP: 12,000", "Regen Rate: 10 HP/s", "Armor Type: Commander"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 18,000 (+1)", "Mass Storage: 650", "Energy: 5,000,000 (+20)", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 135 HP", "Mass: 46"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                case "T3 Support ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0301_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UEL0301"]
                    let health: [String] =  ["HP: 16,000", "Regen Rate: 20 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 2,100 (+1)", "Mass Storage: 275", "Energy: 25,200 (+20)", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 16", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.2", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 14,400 HP", "Mass: 1890"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                    
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy, Weapons"]
                    let bluePrintID = ["XEL0209"]
                    let health: [String] =  ["HP: 1,040", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Engineering Suite", "Jamming", "Radar"]
                    let economy: [String] =  ["Mass: 225", "Mass Storage: 30", "Energy: 1,000", "Build Time: 1,000", "Build Rate: 17.5"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 45"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 936 HP", "Mass: 202"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1101"]
                    let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 75", "Energy: 750 (+20)", "Build Time: 125"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 67"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1105"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 250", "Energy: 1,200", "Build Time: 200",]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 225"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1104"]
                    let health: [String] =  ["HP: 360", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 100 (+1)", "Energy: 4,000 (-150)", "Build Time: 500",]
                    let wreckage: [String] =  ["Health: 324 HP", "Mass: 90"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T2 Power Generator: EG-200 Fusion Reactor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1201"]
                    let health: [String] =  ["HP: 2,160", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 1,200", "Energy: 12,000 (+500)", "Build Time: 2,198",]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 1,944 HP", "Mass: 1,080"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1301"]
                    let health: [String] =  ["HP: 9,720", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,240", "Energy: 57,600 (+2,500)", "Build Time: 6,824"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 8,748 HP", "Mass: 2,916"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1303"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,000 (+12)", "Energy: 65,000 (-3,500)", "Build Time: 4,988"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Weapon Units
                case "T1 Point Defense: DM1 Plasma Cannon":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2101"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 250", "Energy: 2,000", "Build Time: 250"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 225"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T1 Anti-Air Turret: DA1 Railgun":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2104"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 150", "Energy: 1,500", "Build Time: 188"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 135"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T1 Torpedo Launcher: DN1":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2109"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 450", "Energy: 3,600", "Build Time: 450"]
                    let intel: [String] =  ["Vision Radius: 12", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 405"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Tactical Missile Launcher: Aloha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2108"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 800", "Energy: 4,000", "Build Time: 800", "Build Rate: 80"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2204"]
                    let health: [String] =  ["HP: 2,590", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 392", "Energy: 3,920", "Build Time: 958"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 2,331 HP", "Mass: 352"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Torpedo Launcher: Tsunami":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2205"]
                    let health: [String] =  ["HP: 6,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 1,080", "Energy: 9,000", "Build Time: 1,467"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 5,760 HP", "Mass: 972"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Point Defense: Triad":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2301"]
                    let health: [String] =  ["HP: 2,250", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 540", "Energy: 3,600", "Build Time: 664"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 2,025 HP", "Mass: 486"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T2 Artillery Installation: Klink Hammer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2303"]
                    let health: [String] =  ["HP: 3,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,890", "Energy: 13,500", "Build Time: 1,608"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,240 HP", "Mass: 1,701"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Heavy Artillery Installation: Duke":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2302"]
                    let health: [String] =  ["HP: 15,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 72,000", "Energy: 900,000", "Build Time: 30,278"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 13,500 HP", "Mass: 64,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Anti-Air SAM Launcher: Flayer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2304"]
                    let health: [String] =  ["HP: 7,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 1,195"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 6,300 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Strategic Missile Launcher: Stonager":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2305"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 15,000", "Energy: 210,000", "Build Time: 10,453", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 13,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Heavy Point Defense: Ravager":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEB2306"]
                    let health: [String] =  ["HP: 7,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,800", "Energy: 16,000", "Build Time: 1,500"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 6,750 HP", "Mass: 1,620"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "Experimental Artillery: Mavor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2401"]
                    let health: [String] =  ["HP: 8,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 224,775", "Energy: 5,994,000", "Build Time: 99,900"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 7,200 HP", "Mass: 202,297"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                    
                //Defense Units
                case "T2 Tactical Missile Defense: Buzzkill":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB4201"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Aquatic", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 280", "Energy: 3,200", "Build Time: 600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 252"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T3 Strategic Missile Defense: Nuke Eliminator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB4302"]
                    let health: [String] =  ["HP: 3,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Strategic Missile Defense"]
                    let economy: [String] =  ["Mass: 7,500", "Energy: 105,000", "Build Time: 5,814", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,420 HP", "Mass: 6,750"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0305"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 400", "Energy: 12,000 (-100)", "Build Time: 750"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 450", "Water Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 360"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Air Units
                case "T1 Air Scout: Hummingbird":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0101"]
                    let health: [String] =  ["HP: 35", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 40", "Energy: 420", "Build Time: 145"]
                    let intel: [String] =  ["Vision Radius: 42", "Radar Radius: 65", "Sonar Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 8:20", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 17-20", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 31 HP", "Mass: 36"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Interceptor: Cyclone":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0102"]
                    let health: [String] =  ["HP: 295", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 50", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 5:00", "Fuel Recharge Time: 10:00"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 265 HP", "Mass: 45"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Attack Bomber: Scorcher":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0103"]
                    let health: [String] =  ["HP: 215", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 80", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 10-10", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8 "]
                    let wreckage: [String] =  ["Health: 193 HP", "Mass: 72"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Light Air Transport: C-6 Courier":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0107"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 120", "Energy: 4,800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-10", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 108"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Fighter/Bomber: Janus":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["DEA0202"]
                    let health: [String] =  ["HP: 1,200", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 420", "Energy: 8,400", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 8:20", "Fuel Recharge Time: 8:20"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 1,080 HP", "Mass: 378"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Air Transport: C14 Star Lifter":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0104"]
                    let health: [String] =  ["HP: 1,675", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Transport"]
                    let economy: [String] =  ["Mass: 300", "Energy: 12,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 12:30", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 8"]
                    let wreckage: [String] =  ["Health: 1,507 HP", "Mass: 270"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Gunship: Stinger":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0203"]
                    let health: [String] =  ["HP: 880", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 3-12", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 792 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Torpedo Bomber: Stork":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0204"]
                    let health: [String] =  ["HP: 860", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 10:00", "Fuel Recharge Time: 20:00"]
                    let airPhysics: [String] =  ["Speed: 13-15", "Elevation: 18", "Engage Distance: 75", "Turn Speed: 0.48", "Combat Turn Speed: 0.5"]
                    let wreckage: [String] =  ["Health: 774 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Spy Plane: SR90 Blackbird":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0302"]
                    let health: [String] =  ["HP: 1,150", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Omni Sensor", "Radar"]
                    let economy: [String] =  ["Mass: 195", "Energy: 7,500", "Build Time: 900"]
                    let intel: [String] =  ["Vision Radius: 64", "Radar Radius: 96", "Omni Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 25-30", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 1.0", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 1,035 HP", "Mass: 175"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Air-Superiority Fighter: Wasp":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0303"]
                    let health: [String] =  ["HP: 1,800", "Regen Rate: 0 HP/s", "Armor Type: ASF # Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 350", "Energy: 40,000", "Build Time: 3,000"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 16:40", "Fuel Recharge Time: 12:00"]
                    let airPhysics: [String] =  ["Speed: 8-25", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 1.9", "Combat Turn Speed: 1.9"]
                    let wreckage: [String] =  ["Health: 1,620 HP", "Mass: 315"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Strategic Bomber: Ambassador":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 2,100", "Energy: 105,000", "Build Time: 8,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 15-17", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1,890"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Heavy Gunship: Broadsword":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0305"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 1,260 # 1,680", "Energy: 42,000 # 52,500", "Build Time: 6,300 # 8,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 13:20", "Fuel Recharge Time: 8:53"]
                    let airPhysics: [String] =  ["Speed: 3-10", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 1,134"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Heavy Air Transport: Continental":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEA0306"]
                    let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let shield: [String] =  ["HP: 3,000", "Size: 8.5", "Regen Rate: 30 HP/s", "Recharge Time: 35s", "Recharge Rate: 85 HP/s"]
                    let abilities: [String] =  ["Anti-Air", "Shield Dome", "Transport"]
                    let economy: [String] =  ["Mass: 1,400", "Energy: 52,500 (-400)", "Build Time: 5,250"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 4,050 HP", "Mass: 1,260"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "Defense Satellite":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEA0002"]
                    let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000 (-1,000)", "Build Time: 400"]
                    let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 70"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 20", "Fuel Recharge Time: 0"]
                    let airPhysics: [String] =  ["Speed: 0-6", "Elevation: 75"]
                    let wreckage: [String] =  ["Health: 90 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                //Vehicle Units
                case "T1 Land Scout: Snoop":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0101"]
                    let health: [String] =  ["HP: 29", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 12", "Energy: 80", "Build Time: 80"]
                    let intel: [String] =  ["Vision Radius: 24", "Radar Radius: 45"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 26 HP", "Mass: 10"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Light Artillery: Lobo":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0103"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 36", "Energy: 180", "Build Time: 180"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 32"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Anti-Air Gun: Archer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0104"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 28", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 20 # 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Light Assault Bot: Mech Marine":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0106"]
                    let health: [String] =  ["HP: 75", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 35", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 45"]
                    let wreckage: [String] =  ["Health: 67 HP", "Mass: 31"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T1 Medium Tank: MA12 Striker":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0201"]
                    let health: [String] =  ["HP: 300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 56", "Energy: 266", "Build Time: 280"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.4", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 270 HP", "Mass: 50"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Gatling Bot: Mongoose":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["DEL0204"]
                    let health: [String] =  ["HP: 650", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,000", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 3.6", "Turn Rate: 90 # 150"]
                    let wreckage: [String] =  ["Health: 585 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Missile Launcher: Flapjack":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0111"]
                    let health: [String] =  ["HP: 825", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,500", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 742 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Heavy Tank: Pillar":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0202"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 198", "Energy: 990", "Build Time: 880"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 178"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Amphibious Tank: Riptide":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0203"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 363", "Energy: 1,980", "Build Time: 1,320"]
                    let intel: [String] =  ["Vision Radius: 20 # 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0205"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 144"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0303"]
                    let health: [String] =  ["HP: 2,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let shield: [String] =  ["HP: 1,200", "Size: 2.5", "Regen Rate: 9 HP/s", "Recharge Time: 60s", "Recharge Rate: 20 HP/s"]
                    let abilities: [String] =  ["Personal Shield"]
                    let economy: [String] =  ["Mass: 480", "Energy: 5,400 (-25)", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 22"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 1,980 HP", "Mass: 432"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Heavy Artillery: Demolisher":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0304"]
                    let health: [String] =  ["HP: 950", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Deploys"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 4,800"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 855 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Armored Assault Bot: Percival":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0305"]
                    let health: [String] =  ["HP: 9,300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious"]
                    let economy: [String] =  ["Mass: 1,280", "Energy: 14,000", "Build Time: 6,000"]
                    let intel: [String] =  ["Vision Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 8,370 HP", "Mass: 1,152"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Missile Platform: Spearhead":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0306"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 400", "Energy: 3,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 360"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "Experimental Mobile Factory: Fatboy":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0401"]
                    let health: [String] =  ["HP: 12,500", "Regen Rate: 20 HP/s", "Armor Type: Experimental"]
                    let shield: [String] =  ["HP: 20,000", "Size: 25", "Regen Rate: 64 HP/s", "Recharge Time: 160s", "Recharge Rate: 125 HP/s"]
                    let economy: [String] =  ["Mass: 28,000", "Mass Storage: 200", "Energy: 350,000 (-500)", "Build Time: 21,000", "Build Rate: 180"]
                    let intel: [String] =  ["Vision Radius: 32", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 1.75", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 11,250 HP", "Mass: 25,200"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, economy, intel, physics, wreckage, vwe]
                    
                    
                //Ship Units
                case "T1 Frigate: Thunderhead Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0103"]
                    let health: [String] =  ["HP: 2,120", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Jamming", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 280", "Energy: 2,800 (-5)", "Build Time: 1,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 80", "Sonar Radius: 82", "Water Vision Radius: 16"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,908 HP", "Mass: 252"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Attack Submarine: Tigershark":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0203"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Submersible", "Torpedoes"]
                    let economy: [String] =  ["Mass: 360", "Energy: 2,880", "Build Time: 1,440"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 60", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Destroyer: Valiant Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0201"]
                    let health: [String] =  ["HP: 7,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 2,250", "Energy: 15,000", "Build Time: 10,000"]
                    let intel: [String] =  ["Vision Radius: 32",  "Radar Radius: 35", "Sonar Radius: 37", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 6,480 HP", "Mass: 2,025"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Cruiser: Governor Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0202"]
                    let health: [String] =  ["HP: 2,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactical Missile Defense"]
                    let economy: [String] =  ["Mass: 2,000", "Energy: 18,000", "Build Time: 8,000"]
                    let intel: [String] =  ["Vision Radius: 65",  "Radar Radius: 150", "Sonar Radius: 120", "Water Vision Radius: 60"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 2,250 HP", "Mass: 1,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Torpedo Boat: Cooper":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XES0102"]
                    let health: [String] =  ["HP: 1,750", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 900", "Energy: 7,200", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 100"]
                    let wreckage: [String] =  ["Health: 1,575 HP", "Mass: 810"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    //TODO Add Weapons???
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
                case "T3 Battleship: Summit Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0302"]
                    let health: [String] =  ["HP: 51,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 54,000", "Build Time: 28,800"]
                    let intel: [String] =  ["Vision Radius: 50", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 25"]
                    let wreckage: [String] =  ["Health: 45,900 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Strategic Missile Submarine: Ace":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Manual Launch", "Sonar", "Submersible"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 80,000", "Build Time: 20,000", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 16", "Sonar Radius: 60", "Water Vision Radius: 35"]
                    let physics: [String] =  ["Max Speed: 3.3", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Battlecruiser: Neptune Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XES0307"]
                    let health: [String] =  ["HP: 25,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar", "Sonar", "Tactical Missile Defense", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 7,000", "Energy: 60,000", "Build Time: 25,200"]
                    let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 4.25", "Turn Rate: 35"]
                    let wreckage: [String] =  ["Health: 22,500 HP", "Mass: 6,300"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "Experimental Aircraft Carrier: Atlantis":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0401"]
                    let health: [String] =  ["HP: 40,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Carrier", "Factory", "Radar", "Sonar", "Submersible", "Torpedoes"]
                    let economy: [String] =  ["Mass: 12,000", "Energy: 150,000", "Build Time: 14,400", "Build Rate: 240"]
                    let intel: [String] =  ["Vision Radius: 100", "Radar Radius: 250", "Sonar Radius: 252", "Water Vision Radius: 100"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 12"]
                    let wreckage: [String] =  ["Health: 36,000 HP", "Mass: 10,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage", "Veterancy"]
                    let bluePrintID = ["XEB2402"]
                    let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 28,000", "Energy: 400,000", "Build Time: 25,000"]
                    let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 25,200"]
                    let vwe: [String] = ["Veterancy"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage, vwe]
                    
                    
                    
                    
                    
                //Default case
                default:
                    print("Warning InfoView: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                    
                }//End of UEF switch

            }//End of UEF if-statement
            
            
            
            //NEXT FACTION
            if factionName == "Seraphim"
            {
                switch nameOfUnit
                {
                    
                //COMMAND UNITS
                case "ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0001_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["XSL0001"]
                    let health: [String] =  ["HP: 11,500", "Regen Rate: 10 HP/s", "Armor Type: Commander"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 18,000 (+1)", "Mass Storage: 650", "Energy: 5,000,000 (+20)", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 10,350 HP", "Mass: 16,200"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                case "T3 Support ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0301_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["XSL0301"]
                    let health: [String] =  ["HP: 15,500", "Regen Rate: 15 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 2,050 (+2)", "Mass Storage: 275", "Energy: 25,800 (+200)", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 16", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.2", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 13,950 HP", "Mass: 1,845"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                    
                //Engineering Units
                case "T1 Engineer: Iya-istle":
                    
                    let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage"]
                    let bluePrintID = ["XSL0105"]
                    let health: [String] =  ["HP: 125", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover", "Engineering Suite"]
                    let economy: [String] =  ["Mass: 52", "Mass Storage: 10", "Energy: 260", "Build Time: 260", "Build Rate: 5"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 1.9", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 112 HP", "Mass: 46"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                case "T2 Engineer: Iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["XSL0208"]
                    let health: [String] =  ["HP: 250", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover", "Engineering Suite"]
                    let economy: [String] =  ["Mass: 140", "Mass Storage: 20", "Energy: 700", "Build Time: 700", "Build Rate: 12.5"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 225 HP", "Mass: 126"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                case "T3 Engineer: Iyathuum":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["XSL0309"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover", "Engineering Suite"]
                    let economy: [String] =  ["Mass: 440", "Mass Storage: 40", "Energy: 2,200", "Build Time: 2,200", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.4", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 396"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                    
                    
                //Factory Units
                case "T1 Land Factory: Hethiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0101"]
                    let health: [String] =  ["HP: 3,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 240", "Mass Storage: 80", "Energy: 2,100", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,330 HP", "Mass: 216"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Air Factory: Ia-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0102"]
                    let health: [String] =  ["HP: 3,900", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 210", "Mass Storage: 80", "Energy: 2,400", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,510 HP", "Mass: 189"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Naval Factory: Uosiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0103"]
                    let health: [String] =  ["HP: 4,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 300", "Mass Storage: 80", "Energy: 1,500", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 4,140 HP", "Mass: 270"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Land Factory HQ: Hethiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0201"]
                    let health: [String] =  ["HP: 8,200", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 1,040", "Energy: 9,300", "Build Time: 1,600", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,380 HP", "Mass: 936"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Air Factory HQ: Ia-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0202"]
                    let health: [String] =  ["HP: 8,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 840", "Energy: 14,100", "Build Time: 1,800", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,740 HP", "Mass: 756"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Naval Factory HQ: Uosiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0203"]
                    let health: [String] =  ["HP: 17,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 1,670", "Mass Storage: 160", "Energy: 8,100", "Build Time: 2,400", "Build Rate: 60"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 15,300 HP", "Mass: 1,503"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Land Factory: Hethiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9501"]
                    let health: [String] =  ["HP: 4,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 540", "Energy: 4,800", "Build Time: 1,300", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,690 HP", "Mass: 486"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Air Factory: Ia-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9502"]
                    let health: [String] =  ["HP: 4,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 510", "Energy: 7,971", "Build Time: 1,300", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,870 HP", "Mass: 459"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Naval Factory: Uosiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9503"]
                    let health: [String] =  ["HP: 8,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 800", "Mass Storage: 160", "Energy: 4,000", "Build Time: 2,000", "Build Rate: 60"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,650 HP", "Mass: 720"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Land Factory HQ: Hethiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0301"]
                    let health: [String] =  ["HP: 21,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,440", "Energy: 39,900", "Build Time: 9,400", "Build Rate: 90"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 18,900 HP", "Mass: 3,996"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Air Factory HQ: Ia-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0302"]
                    let health: [String] =  ["HP: 21,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,090", "Energy: 99,191", "Build Time: 10,400", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 18,900 HP", "Mass: 3,681"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Naval Factory HQ: Uosiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0303"]
                    let health: [String] =  ["HP: 38,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 7,120", "Energy: 32,572", "Build Time: 9,200", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 34,200 HP", "Mass: 6,408"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Quantum Gateway: Aezthu-uhthe":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB0304"]
                    let health: [String] =  ["HP: 10,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 3,000", "Energy: 30,000", "Build Time: 4,097", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 9,000 HP", "Mass: 2,700"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Land Factory: Hethiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9601"]
                    let health: [String] =  ["HP: 10,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,290", "Energy: 11,550", "Build Time: 3,000", "Build Rate: 90"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 9,450 HP", "Mass: 1,161"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Air Factory: Ia-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9602"]
                    let health: [String] =  ["HP: 10,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,510", "Energy: 34,153", "Build Time: 4,000", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 9,450 HP", "Mass: 1,359"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Naval Factory: Uosiya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZSB9603"]
                    let health: [String] =  ["HP: 19,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,600", "Energy: 7,429", "Build Time: 4,000", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 17,100 HP", "Mass: 1,440"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                    
                //Economy Units
                case "T1 Power Generator: Uya-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1101"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 75", "Energy: 750 (+20)", "Build Time: 125"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 67"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T1 Hydrocarbon Power Plant: Uya-atoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB1102"]
                    let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800 (+100)", "Build Time: 400"]
                    let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 144"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T1 Mass Extractor: Hyalatoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB1103"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 36 (+2)", "Energy: 360 (-2)", "Build Time: 60", "Build Rate: 13.01"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 32"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
                case "T1 Energy Storage: Vishuyal":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1105"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 250", "Energy: 1,200", "Build Time: 200",]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 225"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T1 Mass Storage: Vishyal":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB1106"]
                    let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 200", "Mass Storage: 500", "Energy: 1,500", "Build Time: 250",]
                    let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 180"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T2 Mass Fabricator: Hyaliya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1104"]
                    let health: [String] =  ["HP: 360", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 100 (+1)", "Energy: 4,000 (-150)", "Build Time: 500",]
                    let wreckage: [String] =  ["Health: 324 HP", "Mass: 90"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T2 Power Generator: Uya-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1201"]
                    let health: [String] =  ["HP: 2,160", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 1,200", "Energy: 12,000 (+500)", "Build Time: 2,198",]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 1,944 HP", "Mass: 1,080"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Mass Extractor: Hyalatoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB1202"]
                    let health: [String] =  ["HP: 3,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 900 (+6)", "Energy: 5,400 (-9)", "Build Time: 1,171", "Build Rate: 20.58"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 2,700 HP", "Mass: 810"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Power Generator: Uya-iya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1301"]
                    let health: [String] =  ["HP: 9,720", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,240", "Energy: 57,600 (+2,500)", "Build Time: 6,824"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 8,748 HP", "Mass: 2,916"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Mass Extractor: Hyalatoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB1302"]
                    let health: [String] =  ["HP: 8,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,600 (+18)", "Energy: 31,625 (-54)", "Build Time: 3,944"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,560 HP", "Mass: 4,140"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Mass Fabricator: Hyaliya":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB1303"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,000 (+12)", "Energy: 65,000 (-3,500)", "Build Time: 4,988"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Weapon Units
                case "T1 Point Defense: Uttaus":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2101"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 250", "Energy: 2,000", "Build Time: 250"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 225"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T1 Anti-Air Defense: Ialla":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2104"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 150", "Energy: 1,500", "Build Time: 188"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 135"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T1 Torpedo Launcher: Sou-atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2109"]
                    let health: [String] =  ["HP: 1,650", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 450", "Energy: 3,600", "Build Time: 450"]
                    let intel: [String] =  ["Vision Radius: 12", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 1,485 HP", "Mass: 405"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Tactical Missile Launcher: Ythis":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2108"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 825", "Energy: 4,500", "Build Time: 700", "Build Rate: 80"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 742"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Anti-Air Flak Artillery: Sinnatha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2204"]
                    let health: [String] =  ["HP: 2,520", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 392", "Energy: 3,920", "Build Time: 958"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 2,268 HP", "Mass: 352"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Torpedo Launcher: Uosthu":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2205"]
                    let health: [String] =  ["HP: 4,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 1,080", "Energy: 9,000", "Build Time: 1,467"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 4,320 HP", "Mass: 972"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Point Defense: Uttaushala":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2301"]
                    let health: [String] =  ["HP: 2,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 528", "Energy: 3,648", "Build Time: 727"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 1,890 HP", "Mass: 475"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T2 Artillery Installation: Zthuthaam":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2303"]
                    let health: [String] =  ["HP: 2,850", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,995", "Energy: 14,250", "Build Time: 1,677"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 2,565 HP", "Mass: 1,795"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Heavy Artillery Installation: Hovatham":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2302"]
                    let health: [String] =  ["HP: 13,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 70,800", "Energy: 885,000", "Build Time: 29,792"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 12,150 HP", "Mass: 63,720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Anti-Air Defense: Iathu-ioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2304"]
                    let health: [String] =  ["HP: 7,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 1,195"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 6,300 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Strategic Missile Launcher: Hastue":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2305"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 15,000", "Energy: 210,000", "Build Time: 10,453", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 13,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "Experimental Missile Launcher: Yolona Oss":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2401"]
                    let health: [String] =  ["HP: 12,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 187,650", "Energy: 10,008,000", "Build Time: 125,100", "Build Rate: 2,160"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 10,800 HP", "Mass: 168,885"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Defense Units
                case "T2 Tactical Missile Defense: Ythisatha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB4201"]
                    let health: [String] =  ["HP: 975", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Aquatic", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 280", "Energy: 3,200", "Build Time: 600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 877 HP", "Mass: 252"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Shield Generator: Atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4202"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let shield: [String] =  ["HP: 13,000", "Size: 28", "Regen Rate: 153 HP/s", "Recharge Time: 17s", "Recharge Rate: 764 HP/s"]
                    let abilities: [String] =  ["Shield Dome", "Upgradeable"]
                    let economy: [String] =  ["Mass: 700", "Energy: 7,000 (-250)", "Build Time: 958", "Build Rate: 12.98"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 630"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T2 Stealth Field Generator: Sele-ioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4203"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Stealth Field"]
                    let economy: [String] =  ["Mass: 378", "Energy: 5,670 (-125)", "Build Time: 626"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Stealth Field Radius: 24", "Sonar Stealth Field Radius: 24"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 340"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Heavy Shield Generator: Athanuhthe":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4301"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let shield: [String] =  ["HP: 21,000", "Size: 46", "Regen Rate: 168 HP/s", "Recharge Time: 25s", "Recharge Rate: 840 HP/s"]
                    let abilities: [String] =  ["Shield Dome"]
                    let economy: [String] =  ["Mass: 3,600", "Energy: 60,000 (-500)", "Build Time: 5,841"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 3,240"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T3 Strategic Missile Defense: Ythisioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB4302"]
                    let health: [String] =  ["HP: 3,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Strategic Missile Defense"]
                    let economy: [String] =  ["Mass: 7,500", "Energy: 105,000", "Build Time: 5,814", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,420 HP", "Mass: 6,750"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Sensor Units
                case "T1 Radar System: Esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3101"]
                    let health: [String] =  ["HP: 10", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Radar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 80", "Energy: 720 (-20)", "Build Time: 80", "Build Rate: 14.08"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 115"]
                    let wreckage: [String] =  ["Health: 9 HP", "Mass: 72"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Sonar System: Shou":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3102"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 64", "Energy: 544 (-10)", "Build Time: 80", "Build Rate: 13.01"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 115"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 57"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Radar System: Sele-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3201"]
                    let health: [String] =  ["HP: 50", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Radar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 180", "Energy: 3,600 (-250)", "Build Time: 845", "Build Rate: 21.46"]
                    let intel: [String] =  ["Vision Radius: 25", "Radar Radius: 200"]
                    let wreckage: [String] =  ["Health: 45 HP", "Mass: 162"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Sonar System: Shou-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3202"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar"]
                    let economy: [String] =  ["Mass: 180", "Energy: 5,400 (-100)", "Build Time: 1,171", "Build Rate: 15"]
                    let intel: [String] =  ["Vision Radius: 25", "Sonar Radius: 350"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 162"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Omni Sensor Suite: Aezesel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3104"]
                    let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Omni Sensor", "Radar"]
                    let economy: [String] =  ["Mass: 2,400", "Energy: 30,000 (-2,000)", "Build Time: 2,575"]
                    let intel: [String] =  ["Vision Radius: 30", "Radar Radius: 600", "Omni Radius: 200"]
                    let wreckage: [String] =  ["Health: 90 HP", "Mass: 2,160"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
    
                    
                //Air Units
                case "T1 Air Scout: Sele-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0101"]
                    let health: [String] =  ["HP: 32", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 40", "Energy: 420", "Build Time: 145"]
                    let intel: [String] =  ["Vision Radius: 42", "Radar Radius: 65", "Sonar Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 8:20", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 17-20", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 28 HP", "Mass: 36"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Interceptor: Ia-atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0102"]
                    let health: [String] =  ["HP: 290", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 50", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 5:00", "Fuel Recharge Time: 10:00"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 261 HP", "Mass: 45"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Attack Bomber: Sinnve":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0103"]
                    let health: [String] =  ["HP: 210", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 80", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 10-10", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.75", "Combat Turn Speed: 0.75"]
                    let wreckage: [String] =  ["Health: 189 HP", "Mass: 72"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Light Air Transport: Vish":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0107"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 120", "Energy: 4,800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-10", "Elevation: 8"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 108"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                case "T2 Air Transport: Vishala":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0104"]
                    let health: [String] =  ["HP: 1,625", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Transport"]
                    let economy: [String] =  ["Mass: 300", "Energy: 12,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 9"]
                    let wreckage: [String] =  ["Health: 1,462 HP", "Mass: 270"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Fighter/Bomber: Notha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0202"]
                    let health: [String] =  ["HP: 1,175", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 420", "Energy: 8,400", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 8:20", "Fuel Recharge Time: 8:20"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 1,057 HP", "Mass: 378"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Gunship: Vulthoo":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0203"]
                    let health: [String] =  ["HP: 864", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 3-12", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 777 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Torpedo Bomber: Uosioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0204"]
                    let health: [String] =  ["HP: 840", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 10:00", "Fuel Recharge Time: 20:00"]
                    let airPhysics: [String] =  ["Speed: 13-15", "Elevation: 18", "Engage Distance: 75", "Turn Speed: 0.48", "Combat Turn Speed: 0.5"]
                    let wreckage: [String] =  ["Health: 756 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Spy Plane: Iaselen":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0302"]
                    let health: [String] =  ["HP: 1,100", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Omni Sensor", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 195", "Energy: 7,500", "Build Time: 900"]
                    let intel: [String] =  ["Vision Radius: 64", "Radar Radius: 96", "Sonar Radius: 98", "Omni Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 25-30", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 990 HP", "Mass: 175"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Air-Superiority Fighter: Iazyne":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0303"]
                    let health: [String] =  ["HP: 1,775", "Regen Rate: 0 HP/s", "Armor Type: ASF # Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 350", "Energy: 40,000", "Build Time: 3,000"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 16:40", "Fuel Recharge Time: 12:00"]
                    let airPhysics: [String] =  ["Speed: 8-25", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 1.9", "Combat Turn Speed: 1.9"]
                    let wreckage: [String] =  ["Health: 1,597 HP", "Mass: 315"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Strategic Bomber: Sinntha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0304"]
                    let health: [String] =  ["HP: 3,900", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 2,100", "Energy: 105,000", "Build Time: 8,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 15-17", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 3,510 HP", "Mass: 1,890"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                case "Experimental Bomber: Ahwassa":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0402"]
                    let health: [String] =  ["HP: 52,000", "Regen Rate: 25 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 48,000", "Energy: 780,000", "Build Time: 36,000"]
                    let intel: [String] =  ["Vision Radius: 70"]
                    let physics: [String] =  ["Max Speed: 0.5"]
                    let airPhysics: [String] =  ["Speed: 18-20", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 0.65", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 46,800 HP", "Mass: 43,200"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                //Vehicle Units
                case "T1 Combat Scout: Selen":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0101"]
                    let health: [String] =  ["HP: 35", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Cloaking", "Radar", "Personal Stealth"]
                    let economy: [String] =  ["Mass: 20", "Energy: 80", "Build Time: 80"]
                    let intel: [String] =  ["Vision Radius: 24", "Radar Radius: 40"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 31 HP", "Mass: 18"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Light Artillery: Zthuee":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0103"]
                    let health: [String] =  ["HP: 170", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 54", "Energy: 180", "Build Time: 180"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 153 HP", "Mass: 48"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Anti-Air Gun: Ia-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0104"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 28", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Medium Tank: Thaam":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0201"]
                    let health: [String] =  ["HP: 280", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 54", "Energy: 270", "Build Time: 270"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 252 HP", "Mass: 48"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Missile Launcher: Ythisah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0111"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,500", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.85", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Assault Bot: Ilshavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0202"]
                    let health: [String] =  ["HP: 2,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 360", "Energy: 1,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 45"]
                    let wreckage: [String] =  ["Health: 2,250 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Hover Tank: Yenzyne":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0203"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 220", "Energy: 1,320", "Build Time: 880"]
                    let intel: [String] =  ["Vision Radius: 15"]
                    let physics: [String] =  ["Max Speed: 4.3", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 198"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Anti-Air Cannon: Iashavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0205"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Hover"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.6", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 144"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Siege Tank: Othuum":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0303"]
                    let health: [String] =  ["HP: 6,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Torpedoes"]
                    let economy: [String] =  ["Mass: 840", "Energy: 9,600", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 22", "Water Vision Radius: 25"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 6,030 HP", "Mass: 756"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Heavy Artillery: Suthanus":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0304"]
                    let health: [String] =  ["HP: 925", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Deploys"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 4,800"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 832 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Sniper Bot: Usha-Ah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0305"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 640", "Energy: 8,000", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 576"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Shield Generator: Athanah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["XSL0307"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let shield: [String] =  ["HP: 10,000", "Size: 20", "Regen Rate: 133 HP/s", "Recharge Time: 45s", "Recharge Rate: 222 HP/s"]
                    let abilities: [String] =  ["Hover", "Shield Dome"]
                    let economy: [String] =  ["Mass: 540", "Energy: 4,800 (-300)", "Build Time: 3,200"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 486"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
                case "Experimental Assault Bot: Ythotha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0401"]
                    let health: [String] =  ["HP: 67,000", "Regen Rate: 20 HP/s", "Armor Type: Experimental"]
                    let abilities: [String] =  ["Amphibious", "Anti-Air", "Massive", "Volatile"]
                    let economy: [String] =  ["Mass: 25,000", "Energy: 312,500", "Build Time: 18,750"]
                    let intel: [String] =  ["Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 60,300 HP", "Mass: 22,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                //Ship Units
                case "T1 Frigate: Hau-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0103"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 270", "Energy: 2,700", "Build Time: 1,350"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 80", "Sonar Radius: 82", "Water Vision Radius: 16"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 243"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Attack Submarine: Sou-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0203"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 360", "Energy: 2,880", "Build Time: 1,440"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 60", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Destroyer: Uashavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0201"]
                    let health: [String] =  ["HP: 6,900", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar", "Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 2,250", "Energy: 15,000", "Build Time: 10,000"]
                    let intel: [String] =  ["Vision Radius: 32",  "Radar Radius: 35", "Sonar Radius: 37", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 6,210 HP", "Mass: 2,025"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Cruiser: Ithalua":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0202"]
                    let health: [String] =  ["HP: 2,400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactical Missile Defense"]
                    let economy: [String] =  ["Mass: 2,000", "Energy: 18,000", "Build Time: 8,000"]
                    let intel: [String] =  ["Vision Radius: 65",  "Radar Radius: 150", "Sonar Radius: 120", "Water Vision Radius: 60"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 2,160 HP", "Mass: 1,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Battleship: Hauthuum":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0302"]
                    let health: [String] =  ["HP: 49,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Manual Launch", "Radar", "Sonar", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 54,000", "Build Time: 28,800", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 50", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 44,100 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Aircraft Carrier: Iavish":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0303"]
                    let health: [String] =  ["HP: 24,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Carrier", "Factory", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 4,400", "Energy: 44,000", "Build Time: 13,200", "Build Rate: 180"]
                    let intel: [String] =  ["Vision Radius: 85", "Radar Radius: 200", "Sonar Radius: 40", "Water Vision Radius: 36"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 21,600 HP", "Mass: 3,960"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Submarine Hunter: Yathsou":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 3,000", "Energy: 24,000", "Build Time: 14,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                //Support Units
                case "T1 Wall Section: Haas":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB5101"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 2", "Energy: 10", "Build Time: 10"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T2 Air Staging Beacon: Iathu-uhthe":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB5202"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Air Staging"]
                    let economy: [String] =  ["Mass: 175", "Energy: 2,100", "Build Time: 534"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 157"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
                
                    
                    
                    
                    
                    
                //Default case
                default:
                    print("Warning InfoView: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                    
                }

            }
            
            //NEXT FACTION
            if factionName == "Cybran"
            {
                switch nameOfUnit
                {
                    
                //COMMAND UNITS
                case "ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0001_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UEL0001"]
                    let health: [String] =  ["HP: 12,000", "Regen Rate: 10 HP/s", "Armor Type: Commander"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 18,000 (+1)", "Mass Storage: 650", "Energy: 5,000,000 (+20)", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 135 HP", "Mass: 46"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                case "T3 Support ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0301_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UEL0301"]
                    let health: [String] =  ["HP: 16,000", "Regen Rate: 20 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 2,100 (+1)", "Mass Storage: 275", "Energy: 25,200 (+20)", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 16", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.2", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 14,400 HP", "Mass: 1890"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                    
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy, Weapons"]
                    let bluePrintID = ["XEL0209"]
                    let health: [String] =  ["HP: 1,040", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Engineering Suite", "Jamming", "Radar"]
                    let economy: [String] =  ["Mass: 225", "Mass Storage: 30", "Energy: 1,000", "Build Time: 1,000", "Build Rate: 17.5"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 45"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 936 HP", "Mass: 202"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1101"]
                    let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 75", "Energy: 750 (+20)", "Build Time: 125"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 67"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1105"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 250", "Energy: 1,200", "Build Time: 200",]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 225"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1104"]
                    let health: [String] =  ["HP: 360", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 100 (+1)", "Energy: 4,000 (-150)", "Build Time: 500",]
                    let wreckage: [String] =  ["Health: 324 HP", "Mass: 90"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T2 Power Generator: EG-200 Fusion Reactor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1201"]
                    let health: [String] =  ["HP: 2,160", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 1,200", "Energy: 12,000 (+500)", "Build Time: 2,198",]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 1,944 HP", "Mass: 1,080"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1301"]
                    let health: [String] =  ["HP: 9,720", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,240", "Energy: 57,600 (+2,500)", "Build Time: 6,824"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 8,748 HP", "Mass: 2,916"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB1303"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,000 (+12)", "Energy: 65,000 (-3,500)", "Build Time: 4,988"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Weapon Units
                case "T1 Point Defense: DM1 Plasma Cannon":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2101"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 250", "Energy: 2,000", "Build Time: 250"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 225"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T1 Anti-Air Turret: DA1 Railgun":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2104"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 150", "Energy: 1,500", "Build Time: 188"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 135"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T1 Torpedo Launcher: DN1":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2109"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 450", "Energy: 3,600", "Build Time: 450"]
                    let intel: [String] =  ["Vision Radius: 12", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 405"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Tactical Missile Launcher: Aloha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2108"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 800", "Energy: 4,000", "Build Time: 800", "Build Rate: 80"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Anti-Air Flak Artillery: Air Cleaner":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2204"]
                    let health: [String] =  ["HP: 2,590", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 392", "Energy: 3,920", "Build Time: 958"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 2,331 HP", "Mass: 352"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Torpedo Launcher: Tsunami":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2205"]
                    let health: [String] =  ["HP: 6,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 1,080", "Energy: 9,000", "Build Time: 1,467"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 5,760 HP", "Mass: 972"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Point Defense: Triad":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2301"]
                    let health: [String] =  ["HP: 2,250", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 540", "Energy: 3,600", "Build Time: 664"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 2,025 HP", "Mass: 486"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T2 Artillery Installation: Klink Hammer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2303"]
                    let health: [String] =  ["HP: 3,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,890", "Energy: 13,500", "Build Time: 1,608"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,240 HP", "Mass: 1,701"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Heavy Artillery Installation: Duke":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2302"]
                    let health: [String] =  ["HP: 15,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 72,000", "Energy: 900,000", "Build Time: 30,278"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 13,500 HP", "Mass: 64,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Anti-Air SAM Launcher: Flayer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2304"]
                    let health: [String] =  ["HP: 7,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 1,195"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 6,300 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Strategic Missile Launcher: Stonager":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2305"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 15,000", "Energy: 210,000", "Build Time: 10,453", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 13,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Heavy Point Defense: Ravager":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEB2306"]
                    let health: [String] =  ["HP: 7,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,800", "Energy: 16,000", "Build Time: 1,500"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 6,750 HP", "Mass: 1,620"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "Experimental Artillery: Mavor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEB2401"]
                    let health: [String] =  ["HP: 8,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 224,775", "Energy: 5,994,000", "Build Time: 99,900"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 7,200 HP", "Mass: 202,297"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                    
                //Defense Units
                case "T2 Tactical Missile Defense: Buzzkill":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB4201"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Aquatic", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 280", "Energy: 3,200", "Build Time: 600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 252"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
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
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T3 Strategic Missile Defense: Nuke Eliminator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEB4302"]
                    let health: [String] =  ["HP: 3,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Strategic Missile Defense"]
                    let economy: [String] =  ["Mass: 7,500", "Energy: 105,000", "Build Time: 5,814", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,420 HP", "Mass: 6,750"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0305"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 400", "Energy: 12,000 (-100)", "Build Time: 750"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 450", "Water Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 360"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Air Units
                case "T1 Air Scout: Hummingbird":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0101"]
                    let health: [String] =  ["HP: 35", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 40", "Energy: 420", "Build Time: 145"]
                    let intel: [String] =  ["Vision Radius: 42", "Radar Radius: 65", "Sonar Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 8:20", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 17-20", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 31 HP", "Mass: 36"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Interceptor: Cyclone":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0102"]
                    let health: [String] =  ["HP: 295", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 50", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 5:00", "Fuel Recharge Time: 10:00"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 265 HP", "Mass: 45"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Attack Bomber: Scorcher":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0103"]
                    let health: [String] =  ["HP: 215", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 80", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 10-10", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8 "]
                    let wreckage: [String] =  ["Health: 193 HP", "Mass: 72"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Light Air Transport: C-6 Courier":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0107"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 120", "Energy: 4,800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-10", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 108"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Fighter/Bomber: Janus":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["DEA0202"]
                    let health: [String] =  ["HP: 1,200", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 420", "Energy: 8,400", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 8:20", "Fuel Recharge Time: 8:20"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 1,080 HP", "Mass: 378"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Air Transport: C14 Star Lifter":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0104"]
                    let health: [String] =  ["HP: 1,675", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Transport"]
                    let economy: [String] =  ["Mass: 300", "Energy: 12,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 12:30", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 8"]
                    let wreckage: [String] =  ["Health: 1,507 HP", "Mass: 270"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Gunship: Stinger":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0203"]
                    let health: [String] =  ["HP: 880", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 3-12", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 792 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Torpedo Bomber: Stork":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0204"]
                    let health: [String] =  ["HP: 860", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 10:00", "Fuel Recharge Time: 20:00"]
                    let airPhysics: [String] =  ["Speed: 13-15", "Elevation: 18", "Engage Distance: 75", "Turn Speed: 0.48", "Combat Turn Speed: 0.5"]
                    let wreckage: [String] =  ["Health: 774 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Spy Plane: SR90 Blackbird":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["UEA0302"]
                    let health: [String] =  ["HP: 1,150", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Omni Sensor", "Radar"]
                    let economy: [String] =  ["Mass: 195", "Energy: 7,500", "Build Time: 900"]
                    let intel: [String] =  ["Vision Radius: 64", "Radar Radius: 96", "Omni Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 25-30", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 1.0", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 1,035 HP", "Mass: 175"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Air-Superiority Fighter: Wasp":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0303"]
                    let health: [String] =  ["HP: 1,800", "Regen Rate: 0 HP/s", "Armor Type: ASF # Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 350", "Energy: 40,000", "Build Time: 3,000"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 16:40", "Fuel Recharge Time: 12:00"]
                    let airPhysics: [String] =  ["Speed: 8-25", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 1.9", "Combat Turn Speed: 1.9"]
                    let wreckage: [String] =  ["Health: 1,620 HP", "Mass: 315"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Strategic Bomber: Ambassador":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 2,100", "Energy: 105,000", "Build Time: 8,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 15-17", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1,890"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Heavy Gunship: Broadsword":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEA0305"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 1,260 # 1,680", "Energy: 42,000 # 52,500", "Build Time: 6,300 # 8,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 13:20", "Fuel Recharge Time: 8:53"]
                    let airPhysics: [String] =  ["Speed: 3-10", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 1,134"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Heavy Air Transport: Continental":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEA0306"]
                    let health: [String] =  ["HP: 4,500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let shield: [String] =  ["HP: 3,000", "Size: 8.5", "Regen Rate: 30 HP/s", "Recharge Time: 35s", "Recharge Rate: 85 HP/s"]
                    let abilities: [String] =  ["Anti-Air", "Shield Dome", "Transport"]
                    let economy: [String] =  ["Mass: 1,400", "Energy: 52,500 (-400)", "Build Time: 5,250"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 4,050 HP", "Mass: 1,260"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "Defense Satellite":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEA0002"]
                    let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000 (-1,000)", "Build Time: 400"]
                    let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 70"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 20", "Fuel Recharge Time: 0"]
                    let airPhysics: [String] =  ["Speed: 0-6", "Elevation: 75"]
                    let wreckage: [String] =  ["Health: 90 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                //Vehicle Units
                case "T1 Land Scout: Snoop":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0101"]
                    let health: [String] =  ["HP: 29", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 12", "Energy: 80", "Build Time: 80"]
                    let intel: [String] =  ["Vision Radius: 24", "Radar Radius: 45"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 26 HP", "Mass: 10"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Light Artillery: Lobo":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0103"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 36", "Energy: 180", "Build Time: 180"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 32"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Anti-Air Gun: Archer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0104"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 28", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 20 # 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Light Assault Bot: Mech Marine":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0106"]
                    let health: [String] =  ["HP: 75", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 35", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 45"]
                    let wreckage: [String] =  ["Health: 67 HP", "Mass: 31"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T1 Medium Tank: MA12 Striker":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0201"]
                    let health: [String] =  ["HP: 300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 56", "Energy: 266", "Build Time: 280"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.4", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 270 HP", "Mass: 50"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Gatling Bot: Mongoose":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["DEL0204"]
                    let health: [String] =  ["HP: 650", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,000", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 3.6", "Turn Rate: 90 # 150"]
                    let wreckage: [String] =  ["Health: 585 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Missile Launcher: Flapjack":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0111"]
                    let health: [String] =  ["HP: 825", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,500", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 742 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Heavy Tank: Pillar":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0202"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 198", "Energy: 990", "Build Time: 880"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 178"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Amphibious Tank: Riptide":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0203"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 363", "Energy: 1,980", "Build Time: 1,320"]
                    let intel: [String] =  ["Vision Radius: 20 # 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile AA Flak Artillery: Sky Boxer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0205"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 144"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0303"]
                    let health: [String] =  ["HP: 2,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let shield: [String] =  ["HP: 1,200", "Size: 2.5", "Regen Rate: 9 HP/s", "Recharge Time: 60s", "Recharge Rate: 20 HP/s"]
                    let abilities: [String] =  ["Personal Shield"]
                    let economy: [String] =  ["Mass: 480", "Energy: 5,400 (-25)", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 22"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 1,980 HP", "Mass: 432"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Heavy Artillery: Demolisher":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0304"]
                    let health: [String] =  ["HP: 950", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Deploys"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 4,800"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 855 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Armored Assault Bot: Percival":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0305"]
                    let health: [String] =  ["HP: 9,300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious"]
                    let economy: [String] =  ["Mass: 1,280", "Energy: 14,000", "Build Time: 6,000"]
                    let intel: [String] =  ["Vision Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 8,370 HP", "Mass: 1,152"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Missile Platform: Spearhead":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0306"]
                    let health: [String] =  ["HP: 1,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 400", "Energy: 3,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,530 HP", "Mass: 360"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "Experimental Mobile Factory: Fatboy":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UEL0401"]
                    let health: [String] =  ["HP: 12,500", "Regen Rate: 20 HP/s", "Armor Type: Experimental"]
                    let shield: [String] =  ["HP: 20,000", "Size: 25", "Regen Rate: 64 HP/s", "Recharge Time: 160s", "Recharge Rate: 125 HP/s"]
                    let economy: [String] =  ["Mass: 28,000", "Mass Storage: 200", "Energy: 350,000 (-500)", "Build Time: 21,000", "Build Rate: 180"]
                    let intel: [String] =  ["Vision Radius: 32", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 1.75", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 11,250 HP", "Mass: 25,200"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, shield, economy, intel, physics, wreckage, vwe]
                    
                    
                //Ship Units
                case "T1 Frigate: Thunderhead Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0103"]
                    let health: [String] =  ["HP: 2,120", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Jamming", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 280", "Energy: 2,800 (-5)", "Build Time: 1,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 80", "Sonar Radius: 82", "Water Vision Radius: 16"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,908 HP", "Mass: 252"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Attack Submarine: Tigershark":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0203"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Submersible", "Torpedoes"]
                    let economy: [String] =  ["Mass: 360", "Energy: 2,880", "Build Time: 1,440"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 60", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Destroyer: Valiant Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0201"]
                    let health: [String] =  ["HP: 7,200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 2,250", "Energy: 15,000", "Build Time: 10,000"]
                    let intel: [String] =  ["Vision Radius: 32",  "Radar Radius: 35", "Sonar Radius: 37", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 6,480 HP", "Mass: 2,025"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Cruiser: Governor Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0202"]
                    let health: [String] =  ["HP: 2,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactical Missile Defense"]
                    let economy: [String] =  ["Mass: 2,000", "Energy: 18,000", "Build Time: 8,000"]
                    let intel: [String] =  ["Vision Radius: 65",  "Radar Radius: 150", "Sonar Radius: 120", "Water Vision Radius: 60"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 2,250 HP", "Mass: 1,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Torpedo Boat: Cooper":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XES0102"]
                    let health: [String] =  ["HP: 1,750", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 900", "Energy: 7,200", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 100"]
                    let wreckage: [String] =  ["Health: 1,575 HP", "Mass: 810"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
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
                    //TODO Add Weapons???
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
                case "T3 Battleship: Summit Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0302"]
                    let health: [String] =  ["HP: 51,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 54,000", "Build Time: 28,800"]
                    let intel: [String] =  ["Vision Radius: 50", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 25"]
                    let wreckage: [String] =  ["Health: 45,900 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Strategic Missile Submarine: Ace":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Manual Launch", "Sonar", "Submersible"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 80,000", "Build Time: 20,000", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 16", "Sonar Radius: 60", "Water Vision Radius: 35"]
                    let physics: [String] =  ["Max Speed: 3.3", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Battlecruiser: Neptune Class":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XES0307"]
                    let health: [String] =  ["HP: 25,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar", "Sonar", "Tactical Missile Defense", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 7,000", "Energy: 60,000", "Build Time: 25,200"]
                    let intel: [String] =  ["Vision Radius: 40", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 4.25", "Turn Rate: 35"]
                    let wreckage: [String] =  ["Health: 22,500 HP", "Mass: 6,300"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "Experimental Aircraft Carrier: Atlantis":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UES0401"]
                    let health: [String] =  ["HP: 40,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Carrier", "Factory", "Radar", "Sonar", "Submersible", "Torpedoes"]
                    let economy: [String] =  ["Mass: 12,000", "Energy: 150,000", "Build Time: 14,400", "Build Rate: 240"]
                    let intel: [String] =  ["Vision Radius: 100", "Radar Radius: 250", "Sonar Radius: 252", "Water Vision Radius: 100"]
                    let physics: [String] =  ["Max Speed: 2.8", "Turn Rate: 12"]
                    let wreckage: [String] =  ["Health: 36,000 HP", "Mass: 10,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
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
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage", "Veterancy"]
                    let bluePrintID = ["XEB2402"]
                    let health: [String] =  ["HP: 9,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 28,000", "Energy: 400,000", "Build Time: 25,000"]
                    let wreckage: [String] =  ["Health: 8,100 HP", "Mass: 25,200"]
                    let vwe: [String] = ["Veterancy"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage, vwe]
                    
                    
                    
                    
                    
                //Default case
                default:
                    print("Warning InfoView: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                    
                }

            }
            
            //NEXT FACTION
            if factionName == "Aeon"
            {
                switch nameOfUnit
                {
                    
                //COMMAND UNITS
                case "ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0001_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UAL0001"]
                    let health: [String] =  ["HP: 11,000", "Regen Rate: 10 HP/s", "Armor Type: Commander"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 18,000 (+1)", "Mass Storage: 650", "Energy: 5,000,000 (+20)", "Build Time: 6,000,000", "Build Rate: 10", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 26", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 9,000 HP", "Mass: 16,200"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                case "T3 Support ACU":
                    
                    let unitImage : UIImage = UIImage(named:"uel0301_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage", "Veterancy, Weapons, Enhancements"]
                    let bluePrintID = ["UAL0301"]
                    let health: [String] =  ["HP: 15,000", "Regen Rate: 17 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Customizable", "Engineering Suite", "Not Capturable", "Omni Sensor", "Volatile"]
                    let economy: [String] =  ["Mass: 1,950 (+1)", "Mass Storage: 275", "Energy: 27,100 (+20)", "Build Time: 14,400", "Build Rate: 56", "Build Radius: 10"]
                    let intel: [String] =  ["Vision Radius: 26", "Omni Radius: 16", "Water Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.2", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 13,500 HP", "Mass: 1,755"]
                    let vwe: [String] = ["Veterancy", "Weapons", "Enhancements"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                    
                //Engineering Units
                case "T1 Engineer":
                    
                    let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel" , "Physics", "Wreckage"]
                    let bluePrintID = ["UAL0105"]
                    let health: [String] =  ["HP: 120", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Engineering Suite", "Hover", "Sacrifice"]
                    let economy: [String] =  ["Mass: 52", "Mass Storage: 10", "Energy: 260", "Build Time: 260", "Build Rate: 5"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 1.9", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 108 HP", "Mass: 46"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                case "T2 Engineer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["UAL0208"]
                    let health: [String] =  ["HP: 240", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Engineering Suite", "Hover", "Sacrifice"]
                    let economy: [String] =  ["Mass: 140", "Mass Storage: 20", "Energy: 700", "Build Time: 700", "Build Rate: 12.5"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 1.7", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 216 HP", "Mass: 126"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                case "T3 Engineer":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["UAL0309"]
                    let health: [String] =  ["HP: 480", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Engineering Suite", "Hover", "Sacrifice"]
                    let economy: [String] =  ["Mass: 440", "Mass Storage: 40", "Energy: 2,200", "Build Time: 2,200", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 1.4", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 432 HP", "Mass: 396"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage]
                    
                    
                //Factory Units
                case "T1 Land Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0101"]
                    let health: [String] =  ["HP: 3,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 240", "Mass Storage: 80", "Energy: 2,100", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,330 HP", "Mass: 216"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Air Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0102"]
                    let health: [String] =  ["HP: 3,700", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 210", "Mass Storage: 80", "Energy: 2,400", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,330 HP", "Mass: 189"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Naval Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0103"]
                    let health: [String] =  ["HP: 4,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 300", "Mass Storage: 80", "Energy: 1,500", "Build Time: 300", "Build Rate: 20"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,960 HP", "Mass: 270"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Land Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0201"]
                    let health: [String] =  ["HP: 8,200", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 1,040", "Energy: 9,300", "Build Time: 1,600", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,380 HP", "Mass: 936"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Air Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0202"]
                    let health: [String] =  ["HP: 8,200", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 840", "Energy: 14,100", "Build Time: 1,800", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,380 HP", "Mass: 756"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Naval Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0203"]
                    let health: [String] =  ["HP: 16,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 1,670", "Mass Storage: 160", "Energy: 8,100", "Build Time: 2,400", "Build Rate: 60"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 14,400 HP", "Mass: 1,503"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Land Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZAB9501"]
                    let health: [String] =  ["HP: 4,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 540", "Energy: 4,800", "Build Time: 1,300", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,690 HP", "Mass: 486"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Air Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZAB9502"]
                    let health: [String] =  ["HP: 4,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 510", "Energy: 7,971", "Build Time: 1,300", "Build Rate: 40"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,690 HP", "Mass: 459"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Naval Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZAB9503"]
                    let health: [String] =  ["HP: 8,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 800", "Mass Storage: 160", "Energy: 4,000", "Build Time: 2,000", "Build Rate: 60"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,200 HP", "Mass: 720"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Land Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0301"]
                    let health: [String] =  ["HP: 20,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,440", "Energy: 39,900", "Build Time: 9,400", "Build Rate: 90"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 18,000 HP", "Mass: 3,996"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Air Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0302"]
                    let health: [String] =  ["HP: 20,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,090", "Energy: 99,191", "Build Time: 10,400", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 18,000 HP", "Mass: 3,681"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Naval Factory HQ":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0303"]
                    let health: [String] =  ["HP: 37,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 7,120", "Energy: 32,572", "Build Time: 9,200", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 33,750 HP", "Mass: 6,408"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Quantum Gateway: Portal":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB0304"]
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
                    let bluePrintID = ["ZAB9601"]
                    let health: [String] =  ["HP: 10,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,290", "Energy: 11,550", "Build Time: 3,000", "Build Rate: 90"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 9,000 HP", "Mass: 1,161"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Air Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZAB9602"]
                    let health: [String] =  ["HP: 10,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,000", "Mass Storage: 320", "Energy: 26,182", "Build Time: 4,000", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 9,000 HP", "Mass: 900"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Naval Factory":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["ZAB9603"]
                    let health: [String] =  ["HP: 18,750", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,600", "Energy: 7,429", "Build Time: 4,000", "Build Rate: 120"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 16,875 HP", "Mass: 1,440"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                    
                //Economy Units
                case "T1 Power Generator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1101"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 75", "Energy: 750 (+20)", "Build Time: 125"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 67"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T1 Hydrocarbon Power Plant":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                    let bluePrintID = ["UAB1102"]
                    let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800 (+100)", "Build Time: 400"]
                    let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 144"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T1 Mass Extractor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage"]
                    let bluePrintID = ["UAB1103"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 36 (+2)", "Energy: 360 (-2)", "Build Time: 60", "Build Rate: 13.01"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 32"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
                case "T1 Energy Storage":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1105"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 250", "Energy: 1,200", "Build Time: 200"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 225"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T1 Mass Storage":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Economy", "Wreckage"]
                    let bluePrintID = ["UAB1106"]
                    let health: [String] =  ["HP: 1,600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 200", "Mass Storage: 500", "Energy: 1,500", "Build Time: 250"]
                    let wreckage: [String] =  ["Health: 1,440 HP", "Mass: 180"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T2 Mass Fabricator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1104"]
                    let health: [String] =  ["HP: 360", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 100 (+1)", "Energy: 4,000 (-150)", "Build Time: 500"]
                    let wreckage: [String] =  ["Health: 324 HP", "Mass: 90"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage, vwe]
                case "T2 Power Generator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1201"]
                    let health: [String] =  ["HP: 2,160", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 1,200", "Energy: 12,000 (+500)", "Build Time: 2,198"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 1,944 HP", "Mass: 1,080"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Mass Extractor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB1202"]
                    let health: [String] =  ["HP: 3,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Upgradeable"]
                    let economy: [String] =  ["Mass: 900 (+6)", "Energy: 5,400 (-9)", "Build Time: 1,171", "Build Rate: 20.58"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 2,700 HP", "Mass: 810"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Power Generator: Quantum Reactor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID","Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1301"]
                    let health: [String] =  ["HP: 9,720", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,240", "Energy: 57,600 (+2,500)", "Build Time: 6,824"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 8,748 HP", "Mass: 2,916"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Mass Extractor":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["UAB1302"]
                    let health: [String] =  ["HP: 8,400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 4,600 (+18)", "Energy: 31,625 (-54)", "Build Time: 3,944"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 7,560 HP", "Mass: 4,140"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage]
                case "T3 Mass Fabricator":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["UAB1303"]
                    let health: [String] =  ["HP: 6,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 3,000 (+12)", "Energy: 65,000 (-3,500)", "Build Time: 4,988"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 5,400 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                case "Experimental Resource Generator: Paragon":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XAB1401"]
                    let health: [String] =  ["HP: 5,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Volatile"]
                    let economy: [String] =  ["Mass: 250,200", "Energy: 7,506,000", "Build Time: 125,100"]
                    let intel: [String] =  ["Vision Radius: 15"]
                    let wreckage: [String] =  ["Health: 4,500 HP", "Mass: 225,180"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                    
                    
                    //HERE
                //Weapon Units
                case "T1 Point Defense: Erupter":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["UAB2101"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 250", "Energy: 2,000", "Build Time: 250"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 225"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T1 Anti-Air Defense: Ialla":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2104"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 150", "Energy: 1,500", "Build Time: 188"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 135"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T1 Torpedo Launcher: Sou-atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2109"]
                    let health: [String] =  ["HP: 1,650", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 450", "Energy: 3,600", "Build Time: 450"]
                    let intel: [String] =  ["Vision Radius: 12", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 1,485 HP", "Mass: 405"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Tactical Missile Launcher: Ythis":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2108"]
                    let health: [String] =  ["HP: 1,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 825", "Energy: 4,500", "Build Time: 700", "Build Rate: 80"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 1,350 HP", "Mass: 742"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Anti-Air Flak Artillery: Sinnatha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2204"]
                    let health: [String] =  ["HP: 2,520", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 392", "Energy: 3,920", "Build Time: 958"]
                    let intel: [String] =  ["Vision Radius: 24"]
                    let wreckage: [String] =  ["Health: 2,268 HP", "Mass: 352"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Torpedo Launcher: Uosthu":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2205"]
                    let health: [String] =  ["HP: 4,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 1,080", "Energy: 9,000", "Build Time: 1,467"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 35", "Water Vision Radius: 45"]
                    let wreckage: [String] =  ["Health: 4,320 HP", "Mass: 972"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Point Defense: Uttaushala":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2301"]
                    let health: [String] =  ["HP: 2,100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 528", "Energy: 3,648", "Build Time: 727"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 1,890 HP", "Mass: 475"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T2 Artillery Installation: Zthuthaam":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2303"]
                    let health: [String] =  ["HP: 2,850", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 1,995", "Energy: 14,250", "Build Time: 1,677"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 2,565 HP", "Mass: 1,795"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Heavy Artillery Installation: Hovatham":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2302"]
                    let health: [String] =  ["HP: 13,500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 70,800", "Energy: 885,000", "Build Time: 29,792"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 12,150 HP", "Mass: 63,720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, wreckage, vwe]
                case "T3 Anti-Air Defense: Iathu-ioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2304"]
                    let health: [String] =  ["HP: 7,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Anti-Air", "Aquatic"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 1,195"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 6,300 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T3 Strategic Missile Launcher: Hastue":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2305"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 15,000", "Energy: 210,000", "Build Time: 10,453", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 13,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "Experimental Missile Launcher: Yolona Oss":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSB2401"]
                    let health: [String] =  ["HP: 12,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Manual Launch"]
                    let economy: [String] =  ["Mass: 187,650", "Energy: 10,008,000", "Build Time: 125,100", "Build Rate: 2,160"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let wreckage: [String] =  ["Health: 10,800 HP", "Mass: 168,885"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Defense Units
                case "T2 Tactical Missile Defense: Ythisatha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB4201"]
                    let health: [String] =  ["HP: 975", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Aquatic", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 280", "Energy: 3,200", "Build Time: 600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 877 HP", "Mass: 252"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                case "T2 Shield Generator: Atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4202"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let shield: [String] =  ["HP: 13,000", "Size: 28", "Regen Rate: 153 HP/s", "Recharge Time: 17s", "Recharge Rate: 764 HP/s"]
                    let abilities: [String] =  ["Shield Dome", "Upgradeable"]
                    let economy: [String] =  ["Mass: 700", "Energy: 7,000 (-250)", "Build Time: 958", "Build Rate: 12.98"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 630"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T2 Stealth Field Generator: Sele-ioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4203"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Stealth Field"]
                    let economy: [String] =  ["Mass: 378", "Energy: 5,670 (-125)", "Build Time: 626"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Stealth Field Radius: 24", "Sonar Stealth Field Radius: 24"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 340"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Heavy Shield Generator: Athanuhthe":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB4301"]
                    let health: [String] =  ["HP: 600", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let shield: [String] =  ["HP: 21,000", "Size: 46", "Regen Rate: 168 HP/s", "Recharge Time: 25s", "Recharge Rate: 840 HP/s"]
                    let abilities: [String] =  ["Shield Dome"]
                    let economy: [String] =  ["Mass: 3,600", "Energy: 60,000 (-500)", "Build Time: 5,841"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 540 HP", "Mass: 3,240"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, wreckage]
                case "T3 Strategic Missile Defense: Ythisioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSB4302"]
                    let health: [String] =  ["HP: 3,800", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Strategic Missile Defense"]
                    let economy: [String] =  ["Mass: 7,500", "Energy: 105,000", "Build Time: 5,814", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let wreckage: [String] =  ["Health: 3,420 HP", "Mass: 6,750"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage, vwe]
                    
                //Sensor Units
                case "T1 Radar System: Esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3101"]
                    let health: [String] =  ["HP: 10", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Radar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 80", "Energy: 720 (-20)", "Build Time: 80", "Build Rate: 14.08"]
                    let intel: [String] =  ["Vision Radius: 20", "Radar Radius: 115"]
                    let wreckage: [String] =  ["Health: 9 HP", "Mass: 72"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T1 Sonar System: Shou":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3102"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 64", "Energy: 544 (-10)", "Build Time: 80", "Build Rate: 13.01"]
                    let intel: [String] =  ["Vision Radius: 20", "Sonar Radius: 115"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 57"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Radar System: Sele-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3201"]
                    let health: [String] =  ["HP: 50", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Radar", "Upgradeable"]
                    let economy: [String] =  ["Mass: 180", "Energy: 3,600 (-250)", "Build Time: 845", "Build Rate: 21.46"]
                    let intel: [String] =  ["Vision Radius: 25", "Radar Radius: 200"]
                    let wreckage: [String] =  ["Health: 45 HP", "Mass: 162"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T2 Sonar System: Shou-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3202"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Sonar"]
                    let economy: [String] =  ["Mass: 180", "Energy: 5,400 (-100)", "Build Time: 1,171", "Build Rate: 15"]
                    let intel: [String] =  ["Vision Radius: 25", "Sonar Radius: 350"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 162"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                case "T3 Omni Sensor Suite: Aezesel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Wreckage"]
                    let bluePrintID = ["XSB3104"]
                    let health: [String] =  ["HP: 100", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Omni Sensor", "Radar"]
                    let economy: [String] =  ["Mass: 2,400", "Energy: 30,000 (-2,000)", "Build Time: 2,575"]
                    let intel: [String] =  ["Vision Radius: 30", "Radar Radius: 600", "Omni Radius: 200"]
                    let wreckage: [String] =  ["Health: 90 HP", "Mass: 2,160"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, wreckage]
                    
                    
                //Air Units
                case "T1 Air Scout: Sele-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0101"]
                    let health: [String] =  ["HP: 32", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 40", "Energy: 420", "Build Time: 145"]
                    let intel: [String] =  ["Vision Radius: 42", "Radar Radius: 65", "Sonar Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Turn Rate: 100", "Fuel Use Time: 8:20", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 17-20", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 28 HP", "Mass: 36"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Interceptor: Ia-atha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0102"]
                    let health: [String] =  ["HP: 290", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 50", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 28"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 5:00", "Fuel Recharge Time: 10:00"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 261 HP", "Mass: 45"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Attack Bomber: Sinnve":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0103"]
                    let health: [String] =  ["HP: 210", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 80", "Energy: 2,250", "Build Time: 500"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 10-10", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 0.75", "Combat Turn Speed: 0.75"]
                    let wreckage: [String] =  ["Health: 189 HP", "Mass: 72"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T1 Light Air Transport: Vish":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0107"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Transport"]
                    let economy: [String] =  ["Mass: 120", "Energy: 4,800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-10", "Elevation: 8"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 108"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                case "T2 Air Transport: Vishala":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0104"]
                    let health: [String] =  ["HP: 1,625", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Transport"]
                    let economy: [String] =  ["Mass: 300", "Energy: 12,000", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 13:20", "Fuel Recharge Time: 1:54"]
                    let airPhysics: [String] =  ["Speed: 0-15", "Elevation: 9"]
                    let wreckage: [String] =  ["Health: 1,462 HP", "Mass: 270"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Fighter/Bomber: Notha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0202"]
                    let health: [String] =  ["HP: 1,175", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Anti-Air", "Radar"]
                    let economy: [String] =  ["Mass: 420", "Energy: 8,400", "Build Time: 2,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 8:20", "Fuel Recharge Time: 8:20"]
                    let airPhysics: [String] =  ["Speed: 10-15", "Elevation: 18", "Engage Distance: 50", "Turn Speed: 1.5", "Combat Turn Speed: 1.5"]
                    let wreckage: [String] =  ["Health: 1,057 HP", "Mass: 378"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Gunship: Vulthoo":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0203"]
                    let health: [String] =  ["HP: 864", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 6:40", "Fuel Recharge Time: 13:20"]
                    let airPhysics: [String] =  ["Speed: 3-12", "Elevation: 10"]
                    let wreckage: [String] =  ["Health: 777 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T2 Torpedo Bomber: Uosioz":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0204"]
                    let health: [String] =  ["HP: 840", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Sonar", "Torpedoes"]
                    let economy: [String] =  ["Mass: 240", "Energy: 4,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 10:00", "Fuel Recharge Time: 20:00"]
                    let airPhysics: [String] =  ["Speed: 13-15", "Elevation: 18", "Engage Distance: 75", "Turn Speed: 0.48", "Combat Turn Speed: 0.5"]
                    let wreckage: [String] =  ["Health: 756 HP", "Mass: 216"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Spy Plane: Iaselen":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Weapons"]
                    let bluePrintID = ["XSA0302"]
                    let health: [String] =  ["HP: 1,100", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Omni Sensor", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 195", "Energy: 7,500", "Build Time: 900"]
                    let intel: [String] =  ["Vision Radius: 64", "Radar Radius: 96", "Sonar Radius: 98", "Omni Radius: 30"]
                    let physics: [String] =  ["Max Speed: 10", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 25-30", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 1.0"]
                    let wreckage: [String] =  ["Health: 990 HP", "Mass: 175"]
                    let vwe: [String] = ["Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Air-Superiority Fighter: Iazyne":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0303"]
                    let health: [String] =  ["HP: 1,775", "Regen Rate: 0 HP/s", "Armor Type: ASF # Light"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 350", "Energy: 40,000", "Build Time: 3,000"]
                    let intel: [String] =  ["Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 16:40", "Fuel Recharge Time: 12:00"]
                    let airPhysics: [String] =  ["Speed: 8-25", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 1.9", "Combat Turn Speed: 1.9"]
                    let wreckage: [String] =  ["Health: 1,597 HP", "Mass: 315"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                case "T3 Strategic Bomber: Sinntha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0304"]
                    let health: [String] =  ["HP: 3,900", "Regen Rate: 0 HP/s", "Armor Type: Light"]
                    let abilities: [String] =  ["Radar"]
                    let economy: [String] =  ["Mass: 2,100", "Energy: 105,000", "Build Time: 8,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 65"]
                    let physics: [String] =  ["Max Speed: 0.5", "Fuel Use Time: 25:00", "Fuel Recharge Time: 16:40"]
                    let airPhysics: [String] =  ["Speed: 15-17", "Elevation: 20", "Engage Distance: 50", "Turn Speed: 0.8", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 3,510 HP", "Mass: 1,890"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                case "Experimental Bomber: Ahwassa":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Air Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSA0402"]
                    let health: [String] =  ["HP: 52,000", "Regen Rate: 25 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 48,000", "Energy: 780,000", "Build Time: 36,000"]
                    let intel: [String] =  ["Vision Radius: 70"]
                    let physics: [String] =  ["Max Speed: 0.5"]
                    let airPhysics: [String] =  ["Speed: 18-20", "Elevation: 25", "Engage Distance: 50", "Turn Speed: 0.65", "Combat Turn Speed: 0.8"]
                    let wreckage: [String] =  ["Health: 46,800 HP", "Mass: 43,200"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, airPhysics, wreckage, vwe]
                    
                //Vehicle Units
                case "T1 Combat Scout: Selen":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0101"]
                    let health: [String] =  ["HP: 35", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Cloaking", "Radar", "Personal Stealth"]
                    let economy: [String] =  ["Mass: 20", "Energy: 80", "Build Time: 80"]
                    let intel: [String] =  ["Vision Radius: 24", "Radar Radius: 40"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 31 HP", "Mass: 18"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Light Artillery: Zthuee":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0103"]
                    let health: [String] =  ["HP: 170", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 54", "Energy: 180", "Build Time: 180"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.7", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 153 HP", "Mass: 48"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Mobile Anti-Air Gun: Ia-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0104"]
                    let health: [String] =  ["HP: 200", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air"]
                    let economy: [String] =  ["Mass: 28", "Energy: 140", "Build Time: 140"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 180 HP", "Mass: 25"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Medium Tank: Thaam":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0201"]
                    let health: [String] =  ["HP: 280", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 54", "Energy: 270", "Build Time: 270"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.5", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 252 HP", "Mass: 48"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Missile Launcher: Ythisah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0111"]
                    let health: [String] =  ["HP: 800", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 200", "Energy: 1,500", "Build Time: 1,000"]
                    let intel: [String] =  ["Vision Radius: 18"]
                    let physics: [String] =  ["Max Speed: 2.85", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 720 HP", "Mass: 180"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Assault Bot: Ilshavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0202"]
                    let health: [String] =  ["HP: 2,500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 360", "Energy: 1,800", "Build Time: 1,600"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 45"]
                    let wreckage: [String] =  ["Health: 2,250 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T2 Hover Tank: Yenzyne":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0203"]
                    let health: [String] =  ["HP: 1,300", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Hover"]
                    let economy: [String] =  ["Mass: 220", "Energy: 1,320", "Build Time: 880"]
                    let intel: [String] =  ["Vision Radius: 15"]
                    let physics: [String] =  ["Max Speed: 4.3", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 1,170 HP", "Mass: 198"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Mobile Anti-Air Cannon: Iashavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0205"]
                    let health: [String] =  ["HP: 1,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Hover"]
                    let economy: [String] =  ["Mass: 160", "Energy: 800", "Build Time: 800"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 3.6", "Turn Rate: 120"]
                    let wreckage: [String] =  ["Health: 900 HP", "Mass: 144"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Siege Tank: Othuum":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0303"]
                    let health: [String] =  ["HP: 6,700", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Amphibious", "Torpedoes"]
                    let economy: [String] =  ["Mass: 840", "Energy: 9,600", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 22", "Water Vision Radius: 25"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 6,030 HP", "Mass: 756"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Heavy Artillery: Suthanus":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0304"]
                    let health: [String] =  ["HP: 925", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Deploys"]
                    let economy: [String] =  ["Mass: 800", "Energy: 8,000", "Build Time: 4,800"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 75"]
                    let wreckage: [String] =  ["Health: 832 HP", "Mass: 720"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Sniper Bot: Usha-Ah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XEL0305"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let economy: [String] =  ["Mass: 640", "Energy: 8,000", "Build Time: 3,600"]
                    let intel: [String] =  ["Vision Radius: 26"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 90"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 576"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, economy, intel, physics, wreckage, vwe]
                case "T3 Mobile Shield Generator: Athanah":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Shield", "Abilities", "Economy", "Intel", "Physics", "Wreckage"]
                    let bluePrintID = ["XSL0307"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let shield: [String] =  ["HP: 10,000", "Size: 20", "Regen Rate: 133 HP/s", "Recharge Time: 45s", "Recharge Rate: 222 HP/s"]
                    let abilities: [String] =  ["Hover", "Shield Dome"]
                    let economy: [String] =  ["Mass: 540", "Energy: 4,800 (-300)", "Build Time: 3,200"]
                    let intel: [String] =  ["Vision Radius: 20"]
                    let physics: [String] =  ["Max Speed: 4.0", "Turn Rate: 150"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 486"]
                    unitSectionCells = [bluePrintID, health, shield, abilities, economy, intel, physics, wreckage]
                case "Experimental Assault Bot: Ythotha":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSL0401"]
                    let health: [String] =  ["HP: 67,000", "Regen Rate: 20 HP/s", "Armor Type: Experimental"]
                    let abilities: [String] =  ["Amphibious", "Anti-Air", "Massive", "Volatile"]
                    let economy: [String] =  ["Mass: 25,000", "Energy: 312,500", "Build Time: 18,750"]
                    let intel: [String] =  ["Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 2.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 60,300 HP", "Mass: 22,500"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                    
                //Ship Units
                case "T1 Frigate: Hau-esel":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0103"]
                    let health: [String] =  ["HP: 2,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 270", "Energy: 2,700", "Build Time: 1,350"]
                    let intel: [String] =  ["Vision Radius: 32", "Radar Radius: 80", "Sonar Radius: 82", "Water Vision Radius: 16"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 60"]
                    let wreckage: [String] =  ["Health: 1,800 HP", "Mass: 243"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T1 Attack Submarine: Sou-istle":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0203"]
                    let health: [String] =  ["HP: 400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 360", "Energy: 2,880", "Build Time: 1,440"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 60", "Water Vision Radius: 32"]
                    let physics: [String] =  ["Max Speed: 6.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 360 HP", "Mass: 324"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Destroyer: Uashavoh":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0201"]
                    let health: [String] =  ["HP: 6,900", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Radar", "Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 2,250", "Energy: 15,000", "Build Time: 10,000"]
                    let intel: [String] =  ["Vision Radius: 32",  "Radar Radius: 35", "Sonar Radius: 37", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 50"]
                    let wreckage: [String] =  ["Health: 6,210 HP", "Mass: 2,025"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T2 Cruiser: Ithalua":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0202"]
                    let health: [String] =  ["HP: 2,400", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Radar", "Sonar", "Tactical Missile Defense"]
                    let economy: [String] =  ["Mass: 2,000", "Energy: 18,000", "Build Time: 8,000"]
                    let intel: [String] =  ["Vision Radius: 65",  "Radar Radius: 150", "Sonar Radius: 120", "Water Vision Radius: 60"]
                    let physics: [String] =  ["Max Speed: 4.5", "Turn Rate: 40"]
                    let wreckage: [String] =  ["Health: 2,160 HP", "Mass: 1,800"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Battleship: Hauthuum":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0302"]
                    let health: [String] =  ["HP: 49,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Manual Launch", "Radar", "Sonar", "Tactile Missile Defense"]
                    let economy: [String] =  ["Mass: 9,000", "Energy: 54,000", "Build Time: 28,800", "Build Rate: 1,080"]
                    let intel: [String] =  ["Vision Radius: 50", "Radar Radius: 50", "Sonar Radius: 20", "Water Vision Radius: 50"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 44,100 HP", "Mass: 8,100"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Aircraft Carrier: Iavish":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0303"]
                    let health: [String] =  ["HP: 24,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Carrier", "Factory", "Radar", "Sonar"]
                    let economy: [String] =  ["Mass: 4,400", "Energy: 44,000", "Build Time: 13,200", "Build Rate: 180"]
                    let intel: [String] =  ["Vision Radius: 85", "Radar Radius: 200", "Sonar Radius: 40", "Water Vision Radius: 36"]
                    let physics: [String] =  ["Max Speed: 3.0", "Turn Rate: 30"]
                    let wreckage: [String] =  ["Health: 21,600 HP", "Mass: 3,960"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                case "T3 Submarine Hunter: Yathsou":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Intel", "Physics", "Wreckage", "Veterancy & Weapons"]
                    let bluePrintID = ["XSS0304"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Normal"]
                    let abilities: [String] =  ["Anti-Air", "Sonar", "Submersible", "Torpedoes", "Torpedo Defense"]
                    let economy: [String] =  ["Mass: 3,000", "Energy: 24,000", "Build Time: 14,400"]
                    let intel: [String] =  ["Vision Radius: 32", "Sonar Radius: 90", "Water Vision Radius: 45"]
                    let physics: [String] =  ["Max Speed: 5.0", "Turn Rate: 80"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 2,700"]
                    let vwe: [String] = ["Veterancy", "Weapons"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, intel, physics, wreckage, vwe]
                    
                //Support Units
                case "T1 Wall Section: Haas":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB5101"]
                    let health: [String] =  ["HP: 4,000", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let economy: [String] =  ["Mass: 2", "Energy: 10", "Build Time: 10"]
                    let wreckage: [String] =  ["Health: 3,600 HP", "Mass: 1"]
                    unitSectionCells = [bluePrintID, health, economy, wreckage]
                case "T2 Air Staging Beacon: Iathu-uhthe":
                    //TODO add image
                    //let unitImage : UIImage = UIImage(named:"uel0105_icon")!
                    //imageView.image = unitImage
                    
                    unitSectionNames = ["Blueprint ID", "Health", "Abilities", "Economy", "Wreckage"]
                    let bluePrintID = ["XSB5202"]
                    let health: [String] =  ["HP: 500", "Regen Rate: 0 HP/s", "Armor Type: Structure"]
                    let abilities: [String] =  ["Air Staging"]
                    let economy: [String] =  ["Mass: 175", "Energy: 2,100", "Build Time: 534"]
                    let wreckage: [String] =  ["Health: 450 HP", "Mass: 157"]
                    unitSectionCells = [bluePrintID, health, abilities, economy, wreckage]
                    
                    
                    
                    
                    
                    
                //Default case
                default:
                    print("Warning InfoView: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                    
                }

            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }//End of "if unitName != nil"
    }//End of method

    
    
    
    
    
    
    
    
    
    
    //Runs when view has loaded, use as main set-up function
    override func viewDidLoad() {
        
        //Call super
        super.viewDidLoad()
        
        //Set UEF color as default
        factionColor = uefColor
        
        setFactionColor(factionName: factionName!)
        
        //Set up TableView delegate and datasource as self
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        //Set TableView data based on unit name
        setTableDataForSelectedUnit(unitName)
        
       
        //Label at top of InfoViewController in storyboard. name based on selected cell title from DetailViewController
        topLabel.title = unitName
        
        //Reload table view cells to update cell color
        DispatchQueue.main.async{
            
            self.detailTableView.reloadData()
        }
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
    
    
    
    //Runs when a memory warning has been received
    override func didReceiveMemoryWarning() {
        
        //Call super
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    //Transitions to WeaponsView on UITableViewCell Click
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //If the segue is the one going from Table3 to Nav4 in storyboard
        if segue.identifier == "showExtra" {
            
            
            //Set for running log
            movingToNextView = true
            //If a row was selected (the only case for transition on this segue at this time)
            if detailTableView.indexPathForSelectedRow != nil
            {
                
                //The user-selected cell
                let currentCell = detailTableView.cellForRow(at: detailTableView.indexPathForSelectedRow!)!
                
                //The text of the user-selected cell
                let selectedLabel = currentCell.textLabel!.text
                
                //Storyboard Table4 WeaponsViewController
                let controller = (segue.destination as! UINavigationController).topViewController as! WeaponsViewController
                
                //Pass the title of the user-selected cell to the info view so it knows what unit info to load in its view and hence, table
                controller.unitName = unitName
                
                //Selected cell's label name (Veterancy,Weapons, or Enhancements)
                controller.vweName = selectedLabel
                
                
                //Pass the name of the faction to WeaponsViewController
                controller.factionName = factionName
                
                //Print for running log
                print("Selected: " + selectedLabel!)
                
                
                //Navigation backbutton
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                
                //Set back button text on next view to "Back"
                //controller.navigationItem.leftBarButtonItem?.title = "Back"
                let backItem = UIBarButtonItem()
                backItem.title = "Back"
                navigationItem.backBarButtonItem = backItem
                
            }
            
           
        }
    }
    
    
    
    
    
    
    
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
       
        if(floatyClicked! == true || movingToNextView! == true)
        {}
        else
        {
            print("Selected: Back Button")
        }
        //Set for running log
        movingToNextView = false
        floatyClicked = false
    }
    
    
    //CODE AFTER
    
    
    
    
    
    
    //Runs when the view appears
    override func viewWillAppear(_ animated: Bool) {
        
        //Call super
        super.viewWillAppear(animated)
        
        //Reset previously-selected cell back to default selection style
        selectedCell?.selectionStyle = UITableViewCellSelectionStyle.default
        
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
        
        
        //If the cell is selectable for more data to show
        if (cell.textLabel?.text == "Veterancy" ||
            cell.textLabel?.text == "Weapons" ||
            cell.textLabel?.text == "Enhancements") {
            //Add disclosure indicator to cell
            cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        }
        else{
            /*IMPORTANT set other cells to NOT have any accessory type
             This is important because, although by default the cells have no accessory type,
             random cells will acquire the disclosure indicator because of tableview bugs if this line is not executed for said cells*/
            cell.accessoryType = UITableViewCellAccessoryType.none
        }
        
        //Set color according to faction
        cell.backgroundColor = self.factionColor
        
        //Return the newly-created cell
        return cell
    }
    
    

    
    //Runs when a cell is selected
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?{
        // Determine if row is selectable based on the NSIndexPath.
        
        //The title of the selected cell
        let selectedCellTitle = unitSectionCells[indexPath.section][indexPath.row]
        
        //If the title is equal to a cell that segues to another view...
        if (selectedCellTitle == "Veterancy" ||
            selectedCellTitle == "Weapons" ||
            selectedCellTitle == "Enhancements") {
            
            //Save selected cell
            selectedCell = (tableView.cellForRow(at: indexPath))!
            //Set selected cell selection style to gray
            selectedCell?.selectionStyle = UITableViewCellSelectionStyle.gray
            
            
            //Return index path so segue can occur
            return indexPath
        }
        
        //Return nil to prevent unwanted segue
        return nil
    }
    
    
    
    
    
    
    
}

