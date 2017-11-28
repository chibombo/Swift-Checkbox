//
//  testVC.swift
//  CheckBox
//
//  Created by Luis Genaro Arvizu Vega on 24/11/17.
//  Copyright © 2017 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit

class testVC: UIViewController {

    //MARK: OUTLETS
    @IBOutlet weak var btnCheckbox: GARButton!
    
    //MARK: CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnCheckbox.addTarget(self, action: #selector(toogleCheckbox), for: UIControlEvents.touchUpInside)
        btnCheckbox.setCheckboxType(aType: GARButtonType.withColor)
        //IT IS NECESARY TURN THE CHECKBOX OFF, JUST FOR NOW.
        btnCheckbox.setCheckboxOff(aType: GARButtonType.withColor)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    //MARK: ACTIONS
    @objc func toogleCheckbox()
    {
        
        btnCheckbox.toggleCheckbox()
    }
}
