//
//  DetailViewController.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 5/11/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    //Title of cell selected on MasterViewController
    var nameOfSelectedUnitCategory: String! = "Command"
    
    //TODO delete this var, unused, problem: still required to be kept here by other xcode file
    var detailItem: NSDate?
    
    //Outlet to label at top of DetailViewController in storyboard
    @IBOutlet weak var topLabel: UINavigationItem!
   
    //Outlet to TableView in DetailViewController in storyboard
    @IBOutlet weak var detailTableView: UITableView!
    
    
    //Faction name passed from MasterViewController
    var factionName: String? = "UEF"

    
    //Faction Colors
    var uefColor: UIColor? = UIColor(red: 0/255, green: 2/255, blue: 175/255, alpha: 1.0)
    var cybranColor: UIColor? = UIColor(red: 168/255, green: 14/255, blue: 0/255, alpha: 1.0)
    var seraphimColor: UIColor? = UIColor(red: 255/255, green: 215/255, blue: 125/255, alpha: 1.0)
    var aeonColor: UIColor? = UIColor(red: 5/255, green: 150/255, blue: 0/255, alpha: 1.0)
    
    //Current faction color for table cells
    var factionColor: UIColor?
    
    
    
    
    //Category Data filled in by setTableDataForSelectedUnit(_ nameOfUnit: String!) method
    var unitSectionNames: [String] = []
    var unitSectionCells: [[String]] = []
    
    
    //Set variables unitSectionNames and unitSectionCells according to the passed unit name
    func setTableDataForSelectedUnit(_ nameOfCategory: String!)
    {
        if factionName == "UEF"
        {
            switch nameOfCategory
            {
                
            case "Command":
                unitSectionNames = ["Armored Command Units"]
                let command1: [String] =  ["ACU", "T3 Support ACU"]
                unitSectionCells = [command1]
                
            case "Engineer":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let engineer1: [String] =  ["T1 Engineer"]
                let engineer2: [String] =  ["T2 Engineering Station: The Kennel", "T2 Engineer", "T2 Field Engineer: Sparky"]
                let engineer3: [String] = ["T3 Engineering Station: The Kennel", "T3 Engineer"]
                unitSectionCells = [engineer1, engineer2, engineer3]
            case "Factory":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let factory1: [String] =  ["T1 Land Factory", "T1 Air Factory", "T1 Naval Factory"]
                let factory2: [String] =  ["T2 Land Factory HQ", "T2 Air Factory HQ", "T2 Naval Factory HQ", "T2 Land Factory", "T2 Air Factory", "T2 Naval Factory"]
                let factory3: [String] = ["T3 Land Factory HQ", "T3 Air Factory HQ", "T3 Naval Factory HQ","T3 Quantum Gateway: QGW R-32", "T3 Land Factory", "T3 Air Factory", "T3 Naval Factory"]
                unitSectionCells = [factory1, factory2, factory3]
            case "Economy":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let economy1: [String] =  ["T1 Power Generator", "T1 Hydrocarbon Power Plant: HCPP - X1000", "T1 Mass Extractor: Mass Pump 1", "T1 Energy Storage", "T1 Mass Storage"]
                let economy2: [String] =  ["T2 Mass Fabricator", "T2 Power Generator: EG-200 Fusion Reactor", "T2 Mass Extractor: Mass Pump 2"]
                let economy3: [String] = ["T3 Power Generator: EG-900 Fusion Reactor", "T3 Mass Extractor: Mass Pump 3", "T3 Mass Fabricator"]
                unitSectionCells = [economy1, economy2, economy3]
            case "Weapon":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let weapon1: [String] =  ["T1 Point Defense: DM1 Plasma Cannon", "T1 Anti-Air Turret: DA1 Railgun", "T1 Torpedo Launcher: DN1"]
                let weapon2: [String] =  ["T2 Tactical Missile Launcher: Aloha", "T2 Anti-Air Flak Artillery: Air Cleaner", "T2 Torpedo Launcher: Tsunami", "T2 Point Defense: Triad", "T2 Artillery Installation: Klink Hammer"]
                let weapon3: [String] = ["T3 Heavy Artillery Installation: Duke", "T3 Anti-Air SAM Launcher: Flayer", "T3 Strategic Missile Launcher: Stonager", "T3 Heavy Point Defense: Ravager"]
                let weapon4: [String] = ["Experimental Artillery: Mavor"]
                unitSectionCells = [weapon1, weapon2, weapon3, weapon4]
            case "Defense":
                unitSectionNames = ["Tech 2", "Tech 3"]
                let defense2: [String] =  ["T2 Tactical Missile Defense: Buzzkill", "T2 Shield Generator: SD-Pulse", "T2 Stealth Field Generator: Scattershield"]
                let defense3: [String] = ["T3 Heavy Shield Generator: HSD Pulse", "T3 Strategic Missile Defense: Nuke Eliminator"]
                unitSectionCells = [defense2, defense3]
            case "Sensor":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let sensor1: [String] =  ["T1 Radar System: SA1-1000", "T1 Sonar System: SP1-1000"]
                let sensor2: [String] =  ["T2 Radar System: SA2-2000", "T2 Sonar System: SP2-2000"]
                let sensor3: [String] = ["T3 Omni Sensor Array: SA3-Omni", "T3 Sonar Platform: SP3-3000"]
                unitSectionCells = [sensor1, sensor2, sensor3]
            case "Aircraft":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let air1: [String] =  ["T1 Air Scout: Hummingbird", "T1 Interceptor: Cyclone", "T1 Attack Bomber: Scorcher", "T1 Light Air Transport: C-6 Courier"]
                let air2: [String] =  ["T2 Fighter/Bomber: Janus", "T2 Air Transport: C14 Star Lifter", "T2 Gunship: Stinger" , "T2 Torpedo Bomber: Stork"]
                let air3: [String] = ["T3 Spy Plane: SR90 Blackbird", "T3 Air-Superiority Fighter: Wasp", "T3 Strategic Bomber: Ambassador", "T3 Heavy Gunship: Broadship", "T3 Heavy Air Transport: Continental"]
                //TODO confirm that this unit actually is an experimental
                let air4: [String] = ["Defense Satellite"]
                unitSectionCells = [air1, air2, air3, air4]
            case "Vehicle":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let vehicle1: [String] =  ["T1 Land Scout: Snoop", "T1 Mobile Light Artillery: Lobo", "T1 Mobile Anti-Air Gun: Archer", "T1 Light Assault Bot: Mech Marine", "T1 Medium Tank: MA12 Striker"]
                let vehicle2: [String] =  ["T2 Gatling Bot: Mongoose", "T2 Mobile Missile Launcher: Flapjack", "T2 Heavy Tank: Pillar", "T2 Amphibious Tank: Riptide", "T2 Mobile AA Flak Artillery: Sky Boxer", "T2 Mobile Shield Generator: Parashield"]
                let vehicle3: [String] = ["T3 Heavy Assault Bot: Titan", "T3 Mobile Heavy Artillery: Demolisher", "T3 Armored Assault Bot: Percival", "T3 Mobile Missile Platform: Spearhead"]
                let vehicle4: [String] = ["Experimental Mobile Factory: Fatboy"]
                unitSectionCells = [vehicle1, vehicle2, vehicle3, vehicle4]
            case "Ship":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let ship1: [String] =  ["T1 Frigate: Thunderhead Class", "T1 Attack Submarine: Tigershark"]
                let ship2: [String] =  ["T2 Destroyer: Valiant Class", "T2 Cruiser: Governor Class", "T2 Torpedo Boat: Cooper", "T2 Shield Boat: Bulwark"]
                let ship3: [String] = ["T3 Battleship: Summit Class", "T3 Strategic Missile Submarine: Ace", "T3 Battlecruiser: Neptune Class"]
                let ship4: [String] = ["Experimental Aircraft Carrier: Atlantis"]
                unitSectionCells = [ship1, ship2, ship3, ship4]
            case "Support":
                unitSectionNames = ["Tech 1", "Tech 2", "Experimental"]
                let support1: [String] =  ["T1 Wall Section: Calcicrete"]
                let support2: [String] =  ["T2 Air Staging Facility: Refuel & Repair"]
                let support4: [String] = ["Experimental Satellite System: Novax Center"]
                unitSectionCells = [support1, support2, support4]
                
            default:
                print("Warning: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
            }
        }
        
        
        
        
        
        
        
        
        
        if factionName == "Seraphim"
        {
            switch nameOfCategory
            {
                
            case "Command":
                unitSectionNames = ["Armored Command Units"]
                let command1: [String] =  ["ACU", "T3 Support ACU"]
                unitSectionCells = [command1]
                
            case "Engineer":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let engineer1: [String] =  ["T1 Engineer: Iya-istle"]
                let engineer2: [String] =  ["T2 Engineer: Iya"]
                let engineer3: [String] = ["T3 Engineer: Iyathuum"]
                unitSectionCells = [engineer1, engineer2, engineer3]
            case "Factory":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let factory1: [String] =  ["T1 Land Factory: Hethiya", "T1 Air Factory: Ia-iya", "T1 Naval Factory: Uosiya"]
                let factory2: [String] =  ["T2 Land Factory HQ: Hethiya", "T2 Air Factory HQ: Ia-iya", "T2 Naval Factory HQ: Uosiya", "T2 Land Factory: Hethiya", "T2 Air Factory: Ia-iya", "T2 Naval Factory: Uosiya"]
                let factory3: [String] = ["T3 Land Factory HQ: Hethiya", "T3 Air Factory HQ: Ia-iya", "T3 Naval Factory HQ: Uosiya","T3 Quantum Gateway: Aezthu-uhthe", "T3 Land Factory: Hethiya", "T3 Air Factory: Ia-iya", "T3 Naval Factory: Uosiya"]
                unitSectionCells = [factory1, factory2, factory3]
            case "Economy":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let economy1: [String] =  ["T1 Power Generator: Uya-iya", "T1 Hydrocarbon Power Plant: Uya-atoh", "T1 Mass Extractor: Hyalatoh", "T1 Energy Storage: Vishuyal", "T1 Mass Storage: Vishyal"]
                let economy2: [String] =  ["T2 Mass Fabricator: Hyaliya", "T2 Power Generator: Uya-iya", "T2 Mass Extractor: Hyalatoh"]
                let economy3: [String] = ["T3 Power Generator: Uya-iya", "T3 Mass Extractor: Hyalatoh", "T3 Mass Fabricator: Hyaliya"]
                unitSectionCells = [economy1, economy2, economy3]
            case "Weapon":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let weapon1: [String] =  ["T1 Point Defense: Uttaus", "T1 Anti-Air Defense: Ialla", "T1 Torpedo Launcher: Sou-atha"]
                let weapon2: [String] =  ["T2 Tactical Missile Launcher: Ythis", "T2 Anti-Air Flak Artillery: Sinnatha", "T2 Torpedo Launcher: Uosthu", "T2 Point Defense: Uttaushala", "T2 Artillery Installation: Zthuthaam"]
                let weapon3: [String] = ["T3 Heavy Artillery Installation: Hovatham", "T3 Anti-Air Defense: Iathu-ioz", "T3 Strategic Missile Launcher: Hastue"]
                let weapon4: [String] = ["Experimental Missile Launcher: Yolona Oss"]
                unitSectionCells = [weapon1, weapon2, weapon3, weapon4]
            case "Defense":
                unitSectionNames = ["Tech 2", "Tech 3"]
                let defense2: [String] =  ["T2 Tactical Missile Defense: Ythisatha", "T2 Shield Generator: Atha", "T2 Stealth Field Generator: Sele-ioz"]
                let defense3: [String] = ["T3 Heavy Shield Generator: Athanuhthe", "T3 Strategic Missile Defense: Ythisioz"]
                unitSectionCells = [defense2, defense3]
            case "Sensor":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let sensor1: [String] =  ["T1 Radar System: Esel", "T1 Sonar System: Shou"]
                let sensor2: [String] =  ["T2 Radar System: Sele-esel", "T2 Sonar System: Shou-esel"]
                let sensor3: [String] = ["T3 Omni Sensor Suite: Aezesel"]
                unitSectionCells = [sensor1, sensor2, sensor3]
            case "Aircraft":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let air1: [String] =  ["T1 Air Scout: Sele-istle", "T1 Interceptor: Ia-atha", "T1 Attack Bomber: Sinnve", "T1 Light Air Transport: Vish"]
                let air2: [String] =  ["T2 Air Transport: Vishala", "T2 Fighter/Bomber: Notha", "T2 Gunship: Vulthoo" , "T2 Torpedo Bomber: Uosioz"]
                let air3: [String] = ["T3 Spy Plane: Iaselen", "T3 Air-Superiority Fighter: Iazyne", "T3 Strategic Bomber: Sinntha"]
                let air4: [String] = ["Experimental Bomber: Ahwassa"]
                unitSectionCells = [air1, air2, air3, air4]
            case "Vehicle":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                
                let vehicle1: [String] =  ["T1 Combat Scout: Selen", "T1 Mobile Light Artillery: Zthuee", "T1 Mobile Anti-Air Gun: Ia-istle", "T1 Medium Tank: Thaam"]
                let vehicle2: [String] =  ["T2 Mobile Missile Launcher: Ythisa", "T2 Assault Bot: Ilshavoh", "T2 Hover Tank: Yenzyne", "T2 Mobile Anti-Air Cannon: Iashavoh"]
                
                let vehicle3: [String] = ["T3 Siege Tank: Othuum", "T3 Mobile Heavy Artillery: Suthanus", "T3 Sniper Bot: Usha-Ah", "T3 Mobile Shield Generator: Athanah"]
                
                let vehicle4: [String] = ["Experimental Assault Bot: Ythotha"]
                
                unitSectionCells = [vehicle1, vehicle2, vehicle3, vehicle4]
            case "Ship":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let ship1: [String] =  ["T1 Frigate: Hau-esel", "T1 Attack Submarine: Sou-istle"]
                let ship2: [String] =  ["T2 Destroyer: Uashavoh", "T2 Cruiser: Ithalua"]
                let ship3: [String] = ["T3 Battleship: Hauthuum", "T3 Aircraft Carrier: Iavish", "T3 Submarine Hunter: Yathsou"]
                unitSectionCells = [ship1, ship2, ship3]
            case "Support":
                unitSectionNames = ["Tech 1", "Tech 2"]
                let support1: [String] =  ["T1 Wall Section: Haas"]
                let support2: [String] =  ["T2 Air Staging Beacon: Iathu-uhthe"]
                unitSectionCells = [support1, support2]
                
            default:
                print("Warning: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
            }
        }

        
        
        
        
        
        
        
        if factionName == "Cybran"
        {
            switch nameOfCategory
            {
                
            case "Command":
                unitSectionNames = ["Armored Command Units"]
                let command1: [String] =  ["ACU", "T3 Support ACU"]
                unitSectionCells = [command1]
                
            case "Engineer":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let engineer1: [String] =  ["T1 Engineer"]
                let engineer2: [String] =  ["T2 Engineering Station: The Kennel", "T2 Engineer", "T2 Field Engineer: Sparky"]
                let engineer3: [String] = ["T3 Engineering Station: The Kennel", "T3 Engineer"]
                unitSectionCells = [engineer1, engineer2, engineer3]
            case "Factory":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let factory1: [String] =  ["T1 Land Factory", "T1 Air Factory", "T1 Naval Factory"]
                let factory2: [String] =  ["T2 Land Factory HQ", "T2 Air Factory HQ", "T2 Naval Factory HQ", "T2 Land Factory", "T2 Air Factory", "T2 Naval Factory"]
                let factory3: [String] = ["T3 Land Factory HQ", "T3 Air Factory HQ", "T3 Naval Factory HQ","T3 Quantum Gateway: QGW R-32", "T3 Land Factory", "T3 Air Factory", "T3 Naval Factory"]
                unitSectionCells = [factory1, factory2, factory3]
            case "Economy":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let economy1: [String] =  ["T1 Power Generator", "T1 Hydrocarbon Power Plant: HCPP - X1000", "T1 Mass Extractor: Mass Pump 1", "T1 Energy Storage", "T1 Mass Storage"]
                let economy2: [String] =  ["T2 Mass Fabricator", "T2 Power Generator: EG-200 Fusion Reactor", "T2 Mass Extractor: Mass Pump 2"]
                let economy3: [String] = ["T3 Power Generator: EG-900 Fusion Reactor", "T3 Mass Extractor: Mass Pump 3", "T3 Mass Fabricator"]
                unitSectionCells = [economy1, economy2, economy3]
            case "Weapon":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let weapon1: [String] =  ["T1 Point Defense: DM1 Plasma Cannon", "T1 Anti-Air Turret: DA1 Railgun", "T1 Torpedo Launcher: DN1"]
                let weapon2: [String] =  ["T2 Tactical Missile Launcher: Aloha", "T2 Anti-Air Flak Artillery: Air Cleaner", "T2 Torpedo Launcher: Tsunami", "T2 Point Defense: Triad", "T2 Artillery Installation: Klink Hammer"]
                let weapon3: [String] = ["T3 Heavy Artillery Installation: Duke", "T3 Anti-Air SAM Launcher: Flayer", "T3 Strategic Missile Launcher: Stonager", "T3 Heavy Point Defense: Ravager"]
                let weapon4: [String] = ["Experimental Artillery: Mavor"]
                unitSectionCells = [weapon1, weapon2, weapon3, weapon4]
            case "Defense":
                unitSectionNames = ["Tech 2", "Tech 3"]
                let defense2: [String] =  ["T2 Tactical Missile Defense: Buzzkill", "T2 Shield Generator: SD-Pulse", "T2 Stealth Field Generator: Scattershield"]
                let defense3: [String] = ["T3 Heavy Shield Generator: HSD Pulse", "T3 Strategic Missile Defense: Nuke Eliminator"]
                unitSectionCells = [defense2, defense3]
            case "Sensor":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let sensor1: [String] =  ["T1 Radar System: SA1-1000", "T1 Sonar System: SP1-1000"]
                let sensor2: [String] =  ["T2 Radar System: SA2-2000", "T2 Sonar System: SP2-2000"]
                let sensor3: [String] = ["T3 Omni Sensor Array: SA3-Omni", "T3 Sonar Platform: SP3-3000"]
                unitSectionCells = [sensor1, sensor2, sensor3]
            case "Aircraft":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let air1: [String] =  ["T1 Air Scout: Hummingbird", "T1 Interceptor: Cyclone", "T1 Attack Bomber: Scorcher", "T1 Light Air Transport: C-6 Courier"]
                let air2: [String] =  ["T2 Fighter/Bomber: Janus", "T2 Air Transport: C14 Star Lifter", "T2 Gunship: Stinger" , "T2 Torpedo Bomber: Stork"]
                let air3: [String] = ["T3 Spy Plane: SR90 Blackbird", "T3 Air-Superiority Fighter: Wasp", "T3 Strategic Bomber: Ambassador", "T3 Heavy Gunship: Broadship", "T3 Heavy Air Transport: Continental"]
                //TODO confirm that this unit actually is an experimental
                let air4: [String] = ["Defense Satellite"]
                unitSectionCells = [air1, air2, air3, air4]
            case "Vehicle":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let vehicle1: [String] =  ["T1 Land Scout: Snoop", "T1 Mobile Light Artillery: Lobo", "T1 Mobile Anti-Air Gun: Archer", "T1 Light Assault Bot: Mech Marine", "T1 Medium Tank: MA12 Striker"]
                let vehicle2: [String] =  ["T2 Gatling Bot: Mongoose", "T2 Mobile Missile Launcher: Flapjack", "T2 Heavy Tank: Pillar", "T2 Amphibious Tank: Riptide", "T2 Mobile AA Flak Artillery: Sky Boxer", "T2 Mobile Shield Generator: Parashield"]
                let vehicle3: [String] = ["T3 Heavy Assault Bot: Titan", "T3 Mobile Heavy Artillery: Demolisher", "T3 Armored Assault Bot: Percival", "T3 Mobile Missile Platform: Spearhead"]
                let vehicle4: [String] = ["Experimental Mobile Factory: Fatboy"]
                unitSectionCells = [vehicle1, vehicle2, vehicle3, vehicle4]
            case "Ship":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let ship1: [String] =  ["T1 Frigate: Thunderhead Class", "T1 Attack Submarine: Tigershark"]
                let ship2: [String] =  ["T2 Destroyer: Valiant Class", "T2 Cruiser: Governor Class", "T2 Torpedo Boat: Cooper", "T2 Shield Boat: Bulwark"]
                let ship3: [String] = ["T3 Battleship: Summit Class", "T3 Strategic Missile Submarine: Ace", "T3 Battlecruiser: Neptune Class"]
                let ship4: [String] = ["Experimental Aircraft Carrier: Atlantis"]
                unitSectionCells = [ship1, ship2, ship3, ship4]
            case "Support":
                unitSectionNames = ["Tech 1", "Tech 2", "Experimental"]
                let support1: [String] =  ["T1 Wall Section: Calcicrete"]
                let support2: [String] =  ["T2 Air Staging Facility: Refuel & Repair"]
                let support4: [String] = ["Experimental Satellite System: Novax Center"]
                unitSectionCells = [support1, support2, support4]
                
            default:
                print("Warning: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
            }
        }

        
        
        
        
        
        
        
        if factionName == "Aeon"
        {
            switch nameOfCategory
            {
                
            case "Command":
                unitSectionNames = ["Armored Command Units"]
                let command1: [String] =  ["ACU", "T3 Support ACU"]
                unitSectionCells = [command1]
                
            case "Engineer":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let engineer1: [String] =  ["T1 Engineer"]
                let engineer2: [String] =  ["T2 Engineering Station: The Kennel", "T2 Engineer", "T2 Field Engineer: Sparky"]
                let engineer3: [String] = ["T3 Engineering Station: The Kennel", "T3 Engineer"]
                unitSectionCells = [engineer1, engineer2, engineer3]
            case "Factory":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let factory1: [String] =  ["T1 Land Factory", "T1 Air Factory", "T1 Naval Factory"]
                let factory2: [String] =  ["T2 Land Factory HQ", "T2 Air Factory HQ", "T2 Naval Factory HQ", "T2 Land Factory", "T2 Air Factory", "T2 Naval Factory"]
                let factory3: [String] = ["T3 Land Factory HQ", "T3 Air Factory HQ", "T3 Naval Factory HQ","T3 Quantum Gateway: QGW R-32", "T3 Land Factory", "T3 Air Factory", "T3 Naval Factory"]
                unitSectionCells = [factory1, factory2, factory3]
            case "Economy":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let economy1: [String] =  ["T1 Power Generator", "T1 Hydrocarbon Power Plant: HCPP - X1000", "T1 Mass Extractor: Mass Pump 1", "T1 Energy Storage", "T1 Mass Storage"]
                let economy2: [String] =  ["T2 Mass Fabricator", "T2 Power Generator: EG-200 Fusion Reactor", "T2 Mass Extractor: Mass Pump 2"]
                let economy3: [String] = ["T3 Power Generator: EG-900 Fusion Reactor", "T3 Mass Extractor: Mass Pump 3", "T3 Mass Fabricator"]
                unitSectionCells = [economy1, economy2, economy3]
            case "Weapon":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let weapon1: [String] =  ["T1 Point Defense: DM1 Plasma Cannon", "T1 Anti-Air Turret: DA1 Railgun", "T1 Torpedo Launcher: DN1"]
                let weapon2: [String] =  ["T2 Tactical Missile Launcher: Aloha", "T2 Anti-Air Flak Artillery: Air Cleaner", "T2 Torpedo Launcher: Tsunami", "T2 Point Defense: Triad", "T2 Artillery Installation: Klink Hammer"]
                let weapon3: [String] = ["T3 Heavy Artillery Installation: Duke", "T3 Anti-Air SAM Launcher: Flayer", "T3 Strategic Missile Launcher: Stonager", "T3 Heavy Point Defense: Ravager"]
                let weapon4: [String] = ["Experimental Artillery: Mavor"]
                unitSectionCells = [weapon1, weapon2, weapon3, weapon4]
            case "Defense":
                unitSectionNames = ["Tech 2", "Tech 3"]
                let defense2: [String] =  ["T2 Tactical Missile Defense: Buzzkill", "T2 Shield Generator: SD-Pulse", "T2 Stealth Field Generator: Scattershield"]
                let defense3: [String] = ["T3 Heavy Shield Generator: HSD Pulse", "T3 Strategic Missile Defense: Nuke Eliminator"]
                unitSectionCells = [defense2, defense3]
            case "Sensor":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3"]
                let sensor1: [String] =  ["T1 Radar System: SA1-1000", "T1 Sonar System: SP1-1000"]
                let sensor2: [String] =  ["T2 Radar System: SA2-2000", "T2 Sonar System: SP2-2000"]
                let sensor3: [String] = ["T3 Omni Sensor Array: SA3-Omni", "T3 Sonar Platform: SP3-3000"]
                unitSectionCells = [sensor1, sensor2, sensor3]
            case "Aircraft":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let air1: [String] =  ["T1 Air Scout: Hummingbird", "T1 Interceptor: Cyclone", "T1 Attack Bomber: Scorcher", "T1 Light Air Transport: C-6 Courier"]
                let air2: [String] =  ["T2 Fighter/Bomber: Janus", "T2 Air Transport: C14 Star Lifter", "T2 Gunship: Stinger" , "T2 Torpedo Bomber: Stork"]
                let air3: [String] = ["T3 Spy Plane: SR90 Blackbird", "T3 Air-Superiority Fighter: Wasp", "T3 Strategic Bomber: Ambassador", "T3 Heavy Gunship: Broadship", "T3 Heavy Air Transport: Continental"]
                //TODO confirm that this unit actually is an experimental
                let air4: [String] = ["Defense Satellite"]
                unitSectionCells = [air1, air2, air3, air4]
            case "Vehicle":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let vehicle1: [String] =  ["T1 Land Scout: Snoop", "T1 Mobile Light Artillery: Lobo", "T1 Mobile Anti-Air Gun: Archer", "T1 Light Assault Bot: Mech Marine", "T1 Medium Tank: MA12 Striker"]
                let vehicle2: [String] =  ["T2 Gatling Bot: Mongoose", "T2 Mobile Missile Launcher: Flapjack", "T2 Heavy Tank: Pillar", "T2 Amphibious Tank: Riptide", "T2 Mobile AA Flak Artillery: Sky Boxer", "T2 Mobile Shield Generator: Parashield"]
                let vehicle3: [String] = ["T3 Heavy Assault Bot: Titan", "T3 Mobile Heavy Artillery: Demolisher", "T3 Armored Assault Bot: Percival", "T3 Mobile Missile Platform: Spearhead"]
                let vehicle4: [String] = ["Experimental Mobile Factory: Fatboy"]
                unitSectionCells = [vehicle1, vehicle2, vehicle3, vehicle4]
            case "Ship":
                unitSectionNames = ["Tech 1", "Tech 2", "Tech 3", "Experimental"]
                let ship1: [String] =  ["T1 Frigate: Thunderhead Class", "T1 Attack Submarine: Tigershark"]
                let ship2: [String] =  ["T2 Destroyer: Valiant Class", "T2 Cruiser: Governor Class", "T2 Torpedo Boat: Cooper", "T2 Shield Boat: Bulwark"]
                let ship3: [String] = ["T3 Battleship: Summit Class", "T3 Strategic Missile Submarine: Ace", "T3 Battlecruiser: Neptune Class"]
                let ship4: [String] = ["Experimental Aircraft Carrier: Atlantis"]
                unitSectionCells = [ship1, ship2, ship3, ship4]
            case "Support":
                unitSectionNames = ["Tech 1", "Tech 2", "Experimental"]
                let support1: [String] =  ["T1 Wall Section: Calcicrete"]
                let support2: [String] =  ["T2 Air Staging Facility: Refuel & Repair"]
                let support4: [String] = ["Experimental Satellite System: Novax Center"]
                unitSectionCells = [support1, support2, support4]
                
            default:
                print("Warning: Name of unit Category Not Found in setTableDataForSelectedUnit(_ nameOfUnit: String!)")
                
            }
        }

      
       
        

        
    }
    
    
    
    //TODO possibly delete
    func configureView() {
        // Update the user interface for the detail item.
        
    }

    
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
        
        setFactionColor(factionName: factionName!)
        
        
        //Removes space between table view and nav bar
        self.automaticallyAdjustsScrollViewInsets = false
        
        //Set up TableView delegate and datasource as self
        detailTableView.delegate = self
        detailTableView.dataSource = self
        
        //Set TableView data based on unit name
        setTableDataForSelectedUnit(nameOfSelectedUnitCategory)
        
        //TODO possibly delete
        configureView()
        
        //Label at top of DetailViewController in storyboard. name based on selected cell title from MasterViewController
        topLabel.title = nameOfSelectedUnitCategory
        
        
        //Reload table view cells to update cell color
        DispatchQueue.main.async{
            
            self.detailTableView.reloadData()
        }
    }
    
    //Transitions to Detail View on UITableViewCell Click
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //If the segue is the one going from Table2 to Nav3 in storyboard
        if segue.identifier == "showDetail2" {
           
            //If a row was selected (the only case for transition on this segue at this time)
            if detailTableView.indexPathForSelectedRow != nil
            {
                
                //The user-selected cell
                let currentCell = detailTableView.cellForRow(at: detailTableView.indexPathForSelectedRow!)!
                
                //The text of the user-selected cell
                let selectedLabel = currentCell.textLabel!.text
                
                //Storyboard Table3 InfoViewController
                let controller = (segue.destination as! UINavigationController).topViewController as! InfoViewController
                
                //Pass the title of the user-selected cell to the info view so it knows what unit info to load in its view and hence, table
                controller.unitName = selectedLabel
                
                //pass the faction name to the info view controller
                controller.factionName = factionName
                
                //Navigation backbutton
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
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
        
        cell.backgroundColor = factionColor
        
        //Return the newly-created cell
        return cell
    }
    
    
    

    
    
    


}

