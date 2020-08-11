//
//  ViewController.swift
//  Jalen_T_savemydefualts
//
//  Created by Jalen Taylor on 8/10/20.
//  Copyright © 2020 Jalen Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func mysavebutton(_ sender: Any) {
        UserDefaults.standard.set(myserialnumber.text, forKey: "text")
        UserDefaults.standard.set(myswitch.isOn, forKey:"switch")
        UserDefaults.standard.set(myslider.value, forKey:"slider" )
        
    }
    
    @IBAction func myloadbutton(_ sender: Any) {
        myswitch.isOn = UserDefaults.standard.bool(forKey: "switch")
        myslider.value = UserDefaults.standard.float(forKey: "slider")
        myserialnumber.text = UserDefaults.standard.string(forKey: "text")
    }
    
    @IBAction func mydeletebutton(_ sender: Any) {
        myswitch.isOn = true
        myslider.value = 0.5
        myserialnumber.text = ""
    }
    
    @IBOutlet weak var myserialnumber: UITextField!
    
    
    
    
    @IBOutlet weak var myslider: UISlider!
    
    
    
    
    @IBOutlet weak var myswitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

