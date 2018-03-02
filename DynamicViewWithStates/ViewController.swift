//
//  ViewController.swift
//  DynamicViewWithStates
//
//  Created by Laurent Shala on 2/7/18.
//  Copyright © 2018 Laurent Shala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customView: CustomView!
    
    @IBAction func didTapScenario1(_ sender: UIButton) {
        var myStateCopy = customView.state
        myStateCopy.title = "Hello, world!"
        myStateCopy.subTitle = "This is one awesome blog post!"
        myStateCopy.textColor = .blue
        myStateCopy.backGroundColor = .lightGray
        
        customView.state = myStateCopy
    }
    
    @IBAction func didTapScenario2(_ sender: UIButton) {
        var myStateCopy = customView.state
        myStateCopy.title = "Hello, universe!"
        myStateCopy.subTitle = "This is the best blog post!"
        myStateCopy.textColor = .yellow
        myStateCopy.backGroundColor = .darkGray
        
        customView.state = myStateCopy
    }
}
