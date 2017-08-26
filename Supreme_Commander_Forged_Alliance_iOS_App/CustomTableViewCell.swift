//
//  CustomTableViewCell.swift
//  Supreme_Commander_Forged_Alliance_iOS_App
//
//  Created by m on 8/24/17.
//  Copyright © 2017 MitchHickox. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!
    
    var cellColor: UIColor?
    var gradientSublayer: CAGradientLayer? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func gradient(frame:CGRect) -> CAGradientLayer {
        let layer = CAGradientLayer()
        layer.frame = frame
        layer.startPoint = CGPoint(x: 0,y: 0.5)
        layer.endPoint = CGPoint(x: 1,y: 0.5)
        
        //MUST use .cgColor for this to work
        layer.colors = [
            UIColor.white.cgColor,self.cellColor!.cgColor, self.cellColor!.cgColor, UIColor.white.cgColor]
        //print(cellColor!)
        
        layer.locations = [0.0, 0.35, 0.55, 1.0]

        
        return layer
    }
    
    
    
    func setGradientSublayer(color: UIColor){
        
        self.cellColor = color
        let layer = self.gradient(frame: self.bounds)
        
        
        
        /*if((self.layer.sublayers?[4]) != nil)
        {
            self.layer.sublayers?[4].removeFromSuperlayer()
        }*/
        
        //If there is no gradient sublayer already
        if(self.gradientSublayer == nil)
        {
            
        }
        else{
            //replace the gradient sublayer with the new passed layer
            
            /*print("--------------------------------")
            print("Sublayers before removing: ")
            print(self.layer.sublayers?.count ?? 0)*/
            
            //self.layer.replaceSublayer(self.gradientSublayer!, with: layer)
            self.gradientSublayer?.removeFromSuperlayer()
            
            /*print("Sublayers after removing: ")
            print(self.layer.sublayers?.count ?? 0)*/
           
            
        }
        //insert new gradient as cell's sublayer
        self.layer.insertSublayer(layer, at:0)
        
        /*print("Sublayers after adding: ")
        print(self.layer.sublayers?.count ?? 0)
        print("--------------------------------")*/
        
        
        //set new gradient sublayer as this new gradient layer
        self.gradientSublayer = layer
        
        
        
    }
    

}
