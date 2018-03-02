//
//  CustomView.swift
//  DynamicViewWithStates
//
//  Created by Laurent Shala on 2/7/18.
//  Copyright © 2018 Laurent Shala. All rights reserved.
//

import UIKit

class CustomView: UIView {
    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var subTitleLabel: UILabel!
    
    struct State {
        var title: String = "Default Title"
        var subTitle: String = "Default subTitle"
        var textColor: UIColor = .blue
        var backGroundColor: UIColor = .green
    }
    
    var state = State() {
        didSet {
            update()
        }
    }
        
    private func update() {
        backgroundColor = state.backGroundColor
        
        titleLabel.text = state.title
        titleLabel.textColor = state.textColor
        
        subTitleLabel.text = state.subTitle
        subTitleLabel.textColor = state.textColor
    }
}
