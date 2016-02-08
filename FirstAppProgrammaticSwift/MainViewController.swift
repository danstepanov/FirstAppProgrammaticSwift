//
//  MainViewController.swift
//  FirstAppProgrammaticSwift
//
//  Created by Daniel Stepanov on 2/7/16.
//  Copyright © 2016 Daniel Stepanov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(label)
        view.setNeedsUpdateConstraints()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // Dismisses the Keyboard by making the text field resign
        // first responder
        textField.resignFirstResponder()
        
        // returns false. Instead of adding a line break, the text
        // field resigns
        return false
    }
    
    override func updateViewConstraints() {
        textFieldConstraints()
        buttonConstraints()
        labelConstraints()
        super.updateViewConstraints()
    }
    
    func textFieldConstraints() {
        NSLayoutConstraint(
            item: textField,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0.0)
            .active = true
        
        NSLayoutConstraint(
            item: textField,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Width,
            multiplier: 0.8,
            constant: 0.0)
            .active = true
        
        NSLayoutConstraint(
            item: textField,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 0.1,
            constant: 0.0)
            .active = true
    }
    
    func buttonConstraints() {
        // Center button in Page View
        NSLayoutConstraint(
            item: button,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0.0)
            .active = true
        
        // Set Width to be 30% of the Page View Width
        NSLayoutConstraint(
            item: button,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Width,
            multiplier: 0.3,
            constant: 0.0)
            .active = true
        
        // Set Y Position Relative to Bottom of Page View
        NSLayoutConstraint(
            item: button,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 0.9,
            constant: 0.0)
            .active = true
    }
    
    func labelConstraints() {
        // Center button in Page View
        NSLayoutConstraint(
            item: label,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0.0)
            .active = true
        
        // Set Width to be 80% of the Page View Width
        NSLayoutConstraint(
            item: label,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Width,
            multiplier: 0.8,
            constant: 0.0)
            .active = true
        
        // Set Y Position Relative to Bottom of Page View
        NSLayoutConstraint(
            item: label,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0.0)
            .active = true
    }

    lazy var textField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .RoundedRect
        
        return view
    }()
    
    lazy var button: UIButton! = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: "buttonPressed", forControlEvents: .TouchDown)
        view.setTitle("Press Me!", forState: .Normal)
        view.backgroundColor = UIColor.blueColor()
        
        return view
    }()
    
    lazy var label: UILabel! = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Hello World!"
        view.textAlignment = .Center
        
        return view
    }()

}
