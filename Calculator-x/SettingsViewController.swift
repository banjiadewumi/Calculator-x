//
//  SettingsViewController.swift
//  Calculator-x
//
//  Created by Banji Adewumi on 10/25/18.
//  Copyright © 2018 Banji Adewumi. All rights reserved.
//

import Foundation
import UIKit

class SettingsViewController: UIViewController {
    
//   let defaults = UserDefaults.standard
    var myChoice: Int = 0
    
    @IBOutlet weak var themeLabel: UILabel!
    
    @IBOutlet weak var lightThemeLabel: UILabel!
    @IBOutlet weak var darkThemeLabel: UILabel!
    @IBOutlet weak var sepiaThemeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    @IBOutlet weak var lightThemeButtonView: UIButton!
    
    @IBOutlet weak var darkThemeButtonView: UIButton!
    
    @IBOutlet weak var sepiaThemeButtonView: UIButton!
    
    
    
    
    @IBAction func themeButtonPressed(_ sender: UIButton) {
        
            
            // set radio button to change theme
            
            if sender.tag == 1 {
                
                lightThemeButtonView.setImage(UIImage(named: "dice2"), for: .normal)
                darkThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                sepiaThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                
                //            defaults.set(true, forKey: "myLightTheme")
                //            defaults.set(false, forKey: "myDarkTheme")
                //            defaults.set(false, forKey: "mySepiaTheme")
            }
            else if sender.tag == 2 {
                
                lightThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                darkThemeButtonView.setImage(UIImage(named: "dice2"), for: .normal)
                sepiaThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                
                //            defaults.set(true, forKey: "myDarkTheme")
                //            defaults.set(false, forKey: "myLightTheme")
                //            defaults.set(false, forKey: "mySepiaTheme")
            }
            else if sender.tag == 3 {
                
                lightThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                darkThemeButtonView.setImage(UIImage(named: "dice1"), for: .normal)
                sepiaThemeButtonView.setImage(UIImage(named: "dice2"), for: .normal)
                
                //            defaults.set(true, forKey: "mySepiaTheme")
                //            defaults.set(false, forKey: "myDarkTheme")
                //            defaults.set(false, forKey: "myLightTheme")
                
            }
            
            changeSkin(skinChange: sender.tag)
            
            
            
        
    }
    
    // To change color properties and text of skins
    func changeSkin(skinChange: Int) {
        
        if skinChange == 1 {
            
            self.view?.backgroundColor = UIColor.white
            themeLabel.textColor = UIColor.black
            lightThemeLabel.textColor = UIColor.black
            darkThemeLabel.textColor = UIColor.black
            sepiaThemeLabel.textColor = UIColor.black
        }
            
        else if skinChange == 2 {
            //changing properties of current ViewController
            self.view?.backgroundColor = UIColor.darkGray
            themeLabel.textColor = UIColor.white
            lightThemeLabel.textColor = UIColor.white
            darkThemeLabel.textColor = UIColor.white
            sepiaThemeLabel.textColor = UIColor.white
            
            
        }
            
        else if skinChange == 3 {
            
            self.view?.backgroundColor = UIColor.brown
            themeLabel.textColor = UIColor.white
            lightThemeLabel.textColor = UIColor.white
            darkThemeLabel.textColor = UIColor.white
            sepiaThemeLabel.textColor = UIColor.white
        }
        
       
        
    }
    
  
    
}
