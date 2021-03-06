//
//  GARButton.swift
//  CheckBox
//
//  Created by Luis Genaro Arvizu Vega on 24/11/17.
//  Copyright © 2017 Luis Genaro Arvizu Vega. All rights reserved.
//

import UIKit
/// Description: withColor set a color you want to set below, withoutColor set a gray color.
enum GARButtonType
{
    case withColor
    case withoutColor
}

class GARButton: UIButton {

    //    MARK: VARIABLES
    var isOn: Bool = false
    var type: GARButtonType!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        if type == nil
        {
            type = GARButtonType.withoutColor
        }
        self.setCheckboxOff(aType: type)
    }
    
    required override init(frame: CGRect)
    {
        super.init(frame: frame)
        if type == nil
        {
            type = GARButtonType.withoutColor
        }
        self.setCheckboxOff(aType: type)
    }
    //MARK: FUNCTIONS
    
    /// Description: This method set the type of checkbox you want to use, then turn off the checkbox.
    /// Parameters: GARButtonType
    func setCheckboxType(aType: GARButtonType)
    {
        self.type = aType
        setCheckboxOff(aType: self.type)
    }
    /// Description: This method just change the boolean value and the checkbox
    func toggleCheckbox()
    {
        isOn == true ? setCheckboxOn(aType: self.type) : setCheckboxOff(aType: self.type)
    }
    /// Description: This method turn off the checkbox
    /// Parameters: GARButtonType
    func setCheckboxOff(aType: GARButtonType)
    {
        switch aType {
        case .withColor:
            if let image = UIImage(named: "ic_check_box_outline_blank_white")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
            {
                self.tintColor = UIColor(red: 217/255, green: 167/255, blue: 79/255, alpha: 1)
                self.setImage(image, for: UIControlState.normal)
            }
            break
        case .withoutColor:
            if let image = UIImage(named: "ic_check_box_outline_blank_white")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
            {
                self.tintColor = UIColor.lightGray
                self.setImage(image, for: UIControlState.normal)
            }
            break
        default:
            break
        }
        self.isOn = !self.isOn
    }
    /// Description: This method turn on the checkbox
    /// Parameters: GARButtonType
    func setCheckboxOn(aType: GARButtonType)
    {
        switch aType {
        case .withColor:
            if let image = UIImage(named: "ic_check_box_white")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
            {
                self.tintColor = UIColor(red: 217/255, green: 167/255, blue: 79/255, alpha: 1)
                self.setImage(image, for: UIControlState.normal)
            }
            break
        case .withoutColor:
            if let image = UIImage(named: "ic_check_box_white")?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
            {
                self.tintColor = UIColor.lightGray
                self.setImage(image, for: UIControlState.normal)
            }
            break
        default:
            break
        }
        self.isOn = !self.isOn
    }
}
