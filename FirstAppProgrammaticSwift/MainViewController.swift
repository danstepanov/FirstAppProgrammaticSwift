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
        textFieldConstraint()
        super.updateViewConstraints()
    }
    
    func textFieldConstraint() {
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

    lazy var textField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .RoundedRect
        return view
    }()

}
