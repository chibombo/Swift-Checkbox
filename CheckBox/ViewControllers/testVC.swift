//
//  testVC.swift
//  CheckBox
//
//  Created by Luis Genaro Arvizu Vega on 24/11/17.
//  Copyright © 2017 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

class testVC: UIViewController {

    @IBOutlet weak var btnCheckbox: GARButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnCheckbox.addTarget(self, action: #selector(toogleCheckbox), for: UIControlEvents.touchUpInside)
        btnCheckbox.setCheckboxType(aType: GARButtonType.withColor)
        btnCheckbox.setCheckboxOff(aType: GARButtonType.withColor)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func toogleCheckbox()
    {
        
        btnCheckbox.toggleCheckbox()
    }
}
